<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Mahasiswas;

class MahasiswaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $Mahasiswas = Mahasiswas::orderBy('id', 'desc')->get();
        return view('/mahasiswa/index', compact('Mahasiswas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $Mahasiswa = new Mahasiswas;
        $Mahasiswa->mahasiswa_id = $request->mahasiswa_id;
        $Mahasiswa->nama_mahasiswa = $request->nama_mahasiswa;
        $Mahasiswa->alamat = $request->alamat;
        $Mahasiswa->no_tlp = $request->no_tlp;
        $Mahasiswa->email = $request->email;

        $Mahasiswa->save();

        return redirect('/mahasiswa');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'mahasiswa_id' => 'required',
            'nama_mahasiswa' => 'required',
            'alamat' => 'required',
            'no_tlp' => 'required',
            'email' => 'required'
        ]);

        Mahasiswas::find($id)->update([
            'mahasiswa_id' => $request->mahasiswa_id,
            'nama_mahasiswa' => $request->nama_mahasiswa,
            'alamat' => $request->alamat,
            'no_tlp' => $request->no_tlp,
            'email' => $request->email
        ]);

        return redirect('/mahasiswa');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Mahasiswas::find($id)->delete();
        return redirect('/mahasiswa');
    }
}
