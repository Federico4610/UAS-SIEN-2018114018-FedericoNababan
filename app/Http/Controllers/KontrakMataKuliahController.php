<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\kontrak_matakuliah;

class KontrakMataKuliahController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $kontrak_matakuliah = kontrak_matakuliah::orderBy('id', 'desc')->get();
        return view('/kontrak_matakuliah/index', compact('kontrak_matakuliah'));
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
        $kontrak_matakuliah = new kontrak_matakuliah;
        $kontrak_matakuliah->mahasiswa_id = $request->mahasiswa_id;
        $kontrak_matakuliah->semester_id = $request->semester_id;

        $kontrak_matakuliah->save();

        return redirect('/kontrak_matakuliah');
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
            'semester_id' => 'required',
        ]);

        kontrak_matakuliah::find($id)->update([
            'mahasiswa_id' => $request->mahasiswa_id,
            'semester_id' => $request->semester_id
        ]);

        return redirect('/kontrak_matakuliah');
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        kontrak_matakuliah::find($id)->delete();
        return redirect('/kontrak_matakuliah');
    }
}
