@extends('app.app')

@section('title', 'Mahasiswa')

@section('content')

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Tambah Data
</button>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Mahasiswa ID</th>
      <th scope="col">Nama Mahasiswa</th>
      <th scope="col">Alamat</th>
      <th scope="col">Nomor Telepon</th>
      <th scope="col">Email</th>
      
    </tr>
  </thead>
  <tbody>
  <tr>
  @foreach($Mahasiswas as $mahasiswa)
    <td> {{ $mahasiswa['mahasiswa_id'] }} </td>
    <td> {{ $mahasiswa['nama_mahasiswa'] }} </td>
    <td> {{ $mahasiswa['alamat'] }}  </td>
    <td> {{ $mahasiswa['no_tlp'] }}  </td>
    <td> {{ $mahasiswa['email'] }}  </td>
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
      <form action="/mahasiswa" method="POST">
      @csrf
      
      <div class="modal-body">
  <div class="form-group">
    <label for="exampleInputEmail1">Mahasiswa ID</label>
    <input type="text" class="form-control" id="mahasiswa_id" aria-describedby="emailHelp" name="mahasiswa_id">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Nama Mahasiswa</label>
    <input type="text" class="form-control" id="nama_mahasiswa" aria-describedby="emailHelp" name="nama_mahasiswa">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Alamat</label>
    <input type="text" class="form-control" id="alamat" name="alamat">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Nomor Telepon</label>
    <input type="text" class="form-control" id="no_tlp" name="no_tlp">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Email</label>
    <input type="email" class="form-control" id="email" name="email">
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