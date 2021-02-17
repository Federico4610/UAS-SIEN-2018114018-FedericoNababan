@extends('app.app')

@section('title', 'Absen')

@section('content')

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Tambah Data
</button>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Waktu Absen</th>
      <th scope="col">Mahasiswa ID</th>
      <th scope="col">Matkul ID</th>
      <th scope="col">Keterangan</th>
    </tr>
  </thead>
  <tbody>
  <tr>
  @foreach($Absen as $absen)
    <td> {{ $absen['waktu_absen'] }} </td>
    <td> {{ $absen['mahasiswa_id'] }}  </td>
    <td> {{ $absen['matkul_id'] }}  </td>
    <td> {{ $absen['keterangan'] }}  </td>
  </tr>
  @endforeach
  </tbody>
</table>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <form action="/absen" method="POST">
      @csrf

      <div class="modal-body">
  <div class="form-group">
    <label for="exampleInputEmail1">Waktu Absen</label>
    <input type="time" class="form-control" id="waktu_absen" aria-describedby="emailHelp" placeholder="" name="waktu_absen">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Mahasiswa ID</label>
    <input type="text" class="form-control" id="mahasiswa_id" placeholder="" name="mahasiswa_id">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Matkul ID</label>
    <input type="text" class="form-control" id="matkul_id" placeholder="" name="matkul_id">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Keterangan</label>
    <select name="keterangan" id="keterangan">
      <option value="HADIR">Hadir</option>
      <option value="TIDAK HADIR">Tidak Hadir</option>
    </select>
  </div>




      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
      </form>
    </div>
  </div>
</div>

@endsection