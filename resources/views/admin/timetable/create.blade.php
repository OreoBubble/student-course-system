@extends('admin.base')

@section('content')
    <div class="layui-card">
        <div class="layui-card-header  layuiadmin-card-header-auto">
            <h2>添加课程</h2>
        </div>
        <div class="layui-card-body">
            <form class="layui-form" action="{{route('admin.timetable.store')}}" method="post">
            @include('admin.timetable._form')
        </form>
        </div>
    </div>
@endsection

