<?php

namespace App\Http\Controllers;

use App\User;
use App\Product;
use Validator;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Cache;
use Response;

class ProductController extends Controller
{   
    /* This function is used to check the valid token */
    function validateToken($token) {
       $user = User::where('api_token', $token)->first();
       if($user) {
           return 1;
       } else {
           return 0;
       }
    }
    
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $token = $request->input('token'); 
        if($this->validateToken($token) == 1) {
            $response = array();
            $validator = Validator::make($request->all(), [
                "name" => "required|max:255",
                "email" => "required|email|max:255",
            ]);
            
            if ($validator->fails()) {
                $response['success'] = 'false';
                $response['errors'] = $validator->errors();
                return response($response,400);
            } else {
                DB::enableQueryLog();
                $product = Product::create([
                    'name' => $request->input('name'),
                    'email' => $request->input('email'),
                    'company' => $request->input('company'),
                    'age' => $request->input('age'),
                    'productId' => $request->input('productId'),
                    'address' => $request->input('address'),
                    'mobile' => $request->input('mobile'),
                    'height' => $request->input('height'),
                    'weight' => $request->input('weight')]);
                
               /* print_r(DB::getQueryLog());*/
                
                $response['success'] = 'true';
                $response['success_message'] = 'Product added successfully.';
                $response['product'] = $product;
                return $response;
            }
        } else {
            return response('Unauthorized.', 401);
        }
    }
    
    /**
     * Search the product on the basis of name.
     *
     * @param  $keyword
     * @return $response
     */
    public function search(Request $request)
    {
        $token = $request->input('token');
        if($this->validateToken($token) == 1) {
            $response = array();
            $keyword = $request->input('keyword');
            if ($keyword) {
                $products = Cache::remember($keyword, 1, function () use ($keyword) {
                    return Product::Where('name', 'like', '%' . $keyword . '%')->get()->toArray();
                });
                $response['success'] = 'true';
                if ($products) {
                    $response['message'] = count($products).' record(s) found.';
                } else {
                    $response['message'] = count($products).' record(s) found.';
                }
                $response['products'] = $products;
            } else {
                $response['success'] = 'false';
                $response['error'] = 'You have not entered any keyword.';
            }
            return $response;
        }
        else {
            return response('Unauthorized.', 401);
        }
    }
}
