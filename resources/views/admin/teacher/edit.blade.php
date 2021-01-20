@extends('admin.base')

@section('content')
    <div class="layui-card">
        <div class="layui-card-header layuiadmin-card-header-auto">
            <h2>更新教师</h2>
        </div>
        <div class="layui-card-body">
            <form class="layui-form" action="{{route('admin.teacher.update',['teacher'=>$teacher])}}" method="post">
                <input type="hidden" name="id" value="{{$teacher->id}}">
                {{method_field('put')}}
                @include('admin.teacher._form')
            </form>
        </div>
    </div>
@endsection


