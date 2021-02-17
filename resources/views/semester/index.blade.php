@extends('app.app')

@section('title', 'Semester')

@section('content')

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Tambah Data
</button>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Mahasiswa ID</th>
      <th scope="col">Semester</th>
    </tr>
  </thead>
  <tbody>
  <tr>
  @foreach($semester as $semester)
    <td> {{ $semester['mahasiswa_id'] }}  </td>
    <td> {{ $semester['semester'] }}  </td>
   
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
      
      <form action="/semester" method="POST">
      @csrf

      <div class="modal-body">
        <div class="form-group">
            <label for="exampleInputPassword1">Mahasiswa ID</label>
            <input type="text" class="form-control" id="mahasiswa_id" placeholder="" name="mahasiswa_id">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Semester</label>
            <select name="semester" id="semester">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
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