@extends('app.app')

@section('title', 'Mata Kuliah')

@section('content')

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Tambah Data
</button>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Nama Mata Kuliah</th>
      <th scope="col">SKS</th>
    </tr>
  </thead>
  <tbody>
  <tr>
  @foreach($Matkul as $matkul)
    <td> {{ $matkul['nama_matakuliah'] }} </td>
    <td> {{ $matkul['sks'] }}  </td>
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
      <form action="/matkul" method="POST">
      @csrf
      
      <div class="modal-body">
  <div class="form-group">
    <label for="exampleInputEmail1">Nama Mata Kuliah</label>
    <input type="text" class="form-control" id="nama_matakuliah" aria-describedby="emailHelp" name="nama_matakuliah">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">SKS</label>
    <input type="text" class="form-control" id="sks" name="sks">
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