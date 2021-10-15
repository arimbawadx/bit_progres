<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Hash;
use Alert;
use App\Models\Programmers;
use App\Models\Projects;
use App\Models\Items;
use Illuminate\Http\Request;
use App\Mail\sendEmailProgrammer;

class dataProgrammersCSController extends Controller
{
    public function index()
    {
    	$Programmers=Programmers::where('deleted', 0)->get();
        return view('customer_services.pages.dataProgrammers', compact('Programmers'));
    }

    public function store(Request $request)
    {
        $random="DEV".rand();
        $Programmers= new Programmers;
        $Programmers->name=$request->nama_programmer;
        $Programmers->username=$random;
        $Programmers->password=Hash::make($random);
        $Programmers->phone_number=$request->no_hp;
        $Programmers->email=$request->email;
        $Programmers->save();

        $emailDataLogin = [
            'title' => 'Halo '.$request->nama_programmer,
            'username' => $random,
            'password' => $random,
            'nama' => $request->nama_programmer
        ];
        
        \Mail::to($request->email)->send(new sendEmailProgrammer($emailDataLogin));

        Alert::toast('Programmer '.$request->nama_programmer.' ditambahkan', 'success');
        return redirect('/customer-services/data-programmers');
    }

    public function update(Request $request, $id)
    {
        $Programmers=Programmers::where('id',$id)->first(); 
        $Programmers->name=$request->nama_programmer;
        $Programmers->phone_number=$request->no_hp;
        $Programmers->email=$request->email;
        $Programmers->save();
        Alert::toast('Perubahan Berhasil', 'success');
        return redirect('/customer-services/data-programmers');
    }

    public function destroy($id)
    {
        $Programmers=Programmers::where('id', $id)->first();
        $Programmers->deleted = 1;
        $Programmers->save();
        return redirect('/customer-services/data-programmers');
    }
}
