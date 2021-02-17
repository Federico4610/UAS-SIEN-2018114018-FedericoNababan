@extends('app.app')

@section('title', 'Jadwal')

@section('content')

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Tambah Data
</button>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Jadwal</th>
      <th scope="col">Matkul ID</th>
    </tr>
  </thead>
  <tbody>
  <tr>
  @foreach($jadwal as $jadwal)
    <td> {{ $jadwal['jadwal'] }}  </td>
    <td> {{ $jadwal['matakuliah_id'] }}  </td>
   
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
      
      <form action="/jadwal" method="POST">
      @csrf

      <div class="modal-body">
  
  <div class="form-group">
    <label for="exampleInputPassword1">Jadwal</label>
    <input type="datetime-local" class="form-control" id="jadwal" placeholder="" name="jadwal">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Matkul ID</label>
    <input type="text" class="form-control" id="matakuliah_id" placeholder="" name="matakuliah_id">
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