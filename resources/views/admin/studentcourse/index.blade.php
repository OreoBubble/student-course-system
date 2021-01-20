@extends('admin.base')

@section('content')
    <div class="layui-card">

        <div class="layui-card-header layuiadmin-card-header-auto">
            <div class="layui-btn-group">
{{--                @can('student.studentcourse.destroy')--}}
{{--                <button class="layui-btn layui-btn-sm layui-btn-danger" id="listDelete">删 除</button>--}}
{{--                @endcan--}}
{{--                @can('student.studentcourse.create')--}}
{{--                <a class="layui-btn layui-btn-sm" href="{{ route('admin.studentcourse.create') }}">添 加</a>--}}
{{--                @endcan--}}
            </div>
        </div>

        <div class="layui-card-body">
            <table id="dataTable" lay-filter="dataTable"></table>
        </div>

        <div class="layui-card-body">
            <table id="dataTable" lay-filter="dataTable"></table>
            <script type="text/html" id="options">
                <div class="layui-btn-group">
                    @can('student.studentcourse.create')
                        <a class="layui-btn layui-btn-sm" lay-event="add">选择</a>
                    @endcan
                </div>
            </script>
        </div>

    </div>
@endsection

@section('script')
    @can('student.studentcourse')
    <script>
        layui.use(['layer','table','form'],function () {
            var layer = layui.layer;
            var form = layui.form;
            var table = layui.table;

            //用户表格初始化
            var dataTable = table.render({
                elem: '#dataTable'
                ,height: 500
                ,url: "{{ route('admin.studentcourse.data') }}" //数据接口
                ,where:{model:"timetable"}
                ,page: true //开启分页
                ,cols: [[ //表头
                    {checkbox: true,fixed: true}
                    ,{field: 'id', title: 'ID', sort: true,width:80}
                    ,{field: 'name', title: '课程名'}
                    ,{field: 'period', title: '课时'}
                    ,{field: 'day', title: '星期几'}
                    ,{field: 'lessonnum', title: '第几节'}
                    ,{field: 'classroom', title: '教室'}
                    ,{field: 'created_at', title: '创建时间'}
                    ,{field: 'updated_at', title: '更新时间'}
                    ,{field: 'teacher_name', title: '老师'}
                    ,{fixed: 'right', width: 100, align:'center', toolbar: '#options'}
                ]]
            });

            //监听工具条
            table.on('tool(dataTable)', function(obj){ //注：tool是工具条事件名，dataTable是table原始容器的属性 lay-filter="对应的值"
                var data = obj.data //获得当前行数据
                    ,layEvent = obj.event; //获得 lay-event 对应的值
                if(layEvent === 'add'){
                    layer.confirm('确认选择吗？', function(index){
                        $.post('/admin/studentcourse/'+data.id+'/add',{_token:"{{csrf_token()}}"},function (result) {
                            console.log('1111111')
                            if (result.code==0){
                            //     obj.del(); //删除对应行（tr）的DOM结构
                            }
                            layer.close(index);
                            layer.msg(result.msg,{icon:6})
                        },'json');
                    });
                } else if(layEvent === 'edit'){
                    location.href = '/admin/studentcourse/'+data.id+'/edit';
                }
            });

            //按钮批量删除
            $("#listDelete").click(function () {
                var ids = []
                var hasCheck = table.checkStatus('dataTable')
                var hasCheckData = hasCheck.data
                if (hasCheckData.length>0){
                    $.each(hasCheckData,function (index,element) {
                        ids.push(element.id)
                    })
                }
                if (ids.length>0){
                    layer.confirm('确认删除吗？', function(index){
                        $.post("{{ route('admin.studentcourse.destroy') }}",{_method:'delete',ids:ids},function (result) {
                            if (result.code==0){
                                dataTable.reload()
                            }
                            layer.close(index);
                            layer.msg(result.msg,{icon:6})
                        });
                    })
                }else {
                    layer.msg('请选择删除项',{icon:5})
                }
            })
        })
    </script>
    @endcan
@endsection



