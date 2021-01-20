@extends('admin.base')

@section('content')
    <div class="layui-card">
        <div class="layui-card-header layuiadmin-card-header-auto">
            <h2>更新学生</h2>
        </div>
        <div class="layui-card-body">
            <form class="layui-form" action="{{route('admin.student.update',['student'=>$student])}}" method="post">
                <input type="hidden" name="id" value="{{$student->id}}">
                {{method_field('put')}}
                @include('admin.student._form')
            </form>
        </div>
    </div>
@endsection


