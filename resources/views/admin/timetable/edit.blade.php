@extends('admin.base')

@section('content')
    <div class="layui-card">
        <div class="layui-card-header layuiadmin-card-header-auto">
            <h2>更新课表</h2>
        </div>
        <div class="layui-card-body">
            <form class="layui-form" action="{{route('admin.timetable.update',['$timetable'=>$timetable])}}" method="post">
                <input type="hidden" name="id" value="{{$timetable->id}}">
                {{method_field('put')}}
                @include('admin.timetable._form')
            </form>
        </div>
    </div>
@endsection


