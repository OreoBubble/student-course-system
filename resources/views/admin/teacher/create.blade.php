@extends('admin.base')

@section('content')
    <div class="layui-card">
        <div class="layui-card-header  layuiadmin-card-header-auto">
            <h2>添加教师</h2>
        </div>
        <div class="layui-card-body">
            <form class="layui-form" action="{{route('admin.teacher.store')}}" method="post">
            @include('admin.teacher._form')
        </form>
        </div>
    </div>
@endsection


