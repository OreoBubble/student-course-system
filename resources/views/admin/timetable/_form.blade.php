{{csrf_field()}}


<div class="layui-form-item">
    <label for="" class="layui-form-label">课程名称：</label>
    <div class="layui-input-inline">
        <input type="text" name="name" value="{{ $timetable->name ?? old('name') }}" lay-verify="required"
               placeholder="请输入课程名称" class="layui-input">
    </div>
</div>

<div class="layui-form-item">
    <label for="" class="layui-form-label">星期几：</label>
    <div class="layui-input-inline">
        <input type="text" name="day" value="{{$timetable->day??old('day')}}" lay-verify="required"
               placeholder="请输入星期几" class="layui-input">
    </div>
</div>

<div class="layui-form-item">
    <label for="" class="layui-form-label">课时：</label>
    <div class="layui-input-inline">
        <input type="text" name="period" value="{{$timetable->period??old('period')}}" lay-verify="required"
               placeholder="请输入课时" class="layui-input">
    </div>
</div>

{{--<div class="layui-form-item">--}}
{{--    <label class="layui-form-label">老师</label>--}}
{{--    <div class="layui-input-inline">--}}
{{--        <select name="gender" lay-verify="required">--}}
{{--            <option value="">请选择教师</option>--}}
{{--            <option value="男"  @if(isset($timetable->gender)&&$timetable->gender=='男')selected @endif>男</option>--}}
{{--            <option value="女"  @if(isset($timetable->gender)&&$timetable->gender=='女')selected @endif>女</option>--}}
{{--        </select>--}}
{{--    </div>--}}
{{--</div>--}}

<div class="layui-form-item">
    <label for="" class="layui-form-label">时间：</label>
    <div class="layui-input-inline">
        <input type="text" name="lessonnum" value="{{$timetable->lessonnum??old('lessonnum')}}" lay-verify="required"
               placeholder="请输入上课时间" class="layui-input">
    </div>
</div>

<div class="layui-form-item">
    <label for="" class="layui-form-label">教室：</label>
    <div class="layui-input-inline">
        <input type="text" name="classroom" value="{{ $timetable->classroom ?? old('classroom') }}"
               lay-verify="required" placeholder="请输入教室" class="layui-input">
    </div>
</div>

<div class="layui-form-item">
    <label class="layui-form-label">老师</label>
    <div class="layui-input-inline">
        <select name="teacher_name" lay-verify="required">

            <option value="">请选择老师</option>
            @foreach ($teachers as $teacher)
                <option value="{{ $teacher->name }}"
                        @if(isset($timetable->teacher_name)&&$timetable->teacher_name==$teacher->name)selected @endif>{{$teacher->name}}</option>
            @endforeach
        </select>


    </div>
</div>


<div class="layui-form-item">
    <div class="layui-input-block">
        <button type="submit" class="layui-btn" lay-submit="" lay-filter="formDemo">确 认</button>
        <a class="layui-btn" href="{{route('admin.timetable')}}">返 回</a>
    </div>
</div>


