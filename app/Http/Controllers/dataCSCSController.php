<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Hash;
use Alert;
use App\Models\CustomerServices;
use Illuminate\Http\Request;
use App\Mail\sendEmailCS;

class dataCSCSController extends Controller
{
    public function index()
    {
    	$CustomerServices=CustomerServices::all();
        return view('customer_services.pages.dataCS', compact('CustomerServices'));
    }

    public function store(Request $request)
    {
        $random="CS".rand();
        $CustomerServices= new CustomerServices;
        $CustomerServices->name=$request->nama_cs;
        $CustomerServices->username=$random;
        $CustomerServices->password=Hash::make($random);
        $CustomerServices->phone_number=$request->no_hp;
        $CustomerServices->email=$request->email;
        $CustomerServices->save();

        $emailDataLogin = [
            'title' => 'Halo '.$request->nama_cs,
            'username' => $random,
            'password' => $random,
            'nama' => $request->nama_cs
        ];
        
        \Mail::to($request->email)->send(new sendEmailCS($emailDataLogin));

        Alert::toast('Customer Service '.$request->nama_cs.' ditambahkan', 'success');
        return redirect('/customer-services/data-cs');
    }

    public function update(Request $request, $id)
    {
        $CustomerServices=CustomerServices::where('id',$id)->first(); 
        $CustomerServices->name=$request->nama_cs;
        $CustomerServices->phone_number=$request->no_hp;
        $CustomerServices->email=$request->email;
        $CustomerServices->save();
        Alert::toast('Perubahan Berhasil', 'success');
        return redirect('/customer-services/data-cs');
    }

    public function destroy($id)
    {
        $CustomerServices=CustomerServices::where('id', $id)->first();     
        $CustomerServices->delete();
        return redirect('/customer-services/data-cs');
    }
}
