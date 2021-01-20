{{csrf_field()}}
<div class="layui-form-item">
    <label for="" class="layui-form-label">编号</label>
    <div class="layui-input-inline">
        <input type="text" name="number" value="{{$student->number??old('number')}}"  lay-verify="required" placeholder="请输入编号" class="layui-input">
    </div>
</div>

<div class="layui-form-item">
    <label for="" class="layui-form-label">用户名</label>
    <div class="layui-input-inline">
        <input type="text" name="name" value="{{ $student->name ?? old('name') }}" lay-verify="required" placeholder="请输入用户名" class="layui-input" >
    </div>
</div>

<div class="layui-form-item">
    <label class="layui-form-label">性别</label>
    <div class="layui-input-inline">
        <select name="gender" lay-verify="required">
            <option value="">请选择性别</option>
            <option value="男"  @if(isset($student->gender)&&$student->gender=='男')selected @endif>男</option>
            <option value="女"  @if(isset($student->gender)&&$student->gender=='女')selected @endif>女</option>
        </select>
    </div>
</div>

<div class="layui-form-item">
    <label for="" class="layui-form-label">年龄</label>
    <div class="layui-input-inline">
        <input type="text" name="age" value="{{$student->age??old('age')}}"  lay-verify="required" placeholder="请输入年龄" class="layui-input">
    </div>
</div>

<div class="layui-form-item">
    <label for="" class="layui-form-label">班级</label>
    <div class="layui-input-inline">
        <input type="text" name="class" value="{{ $student->class ?? old('class') }}" lay-verify="required" placeholder="请输入班级" class="layui-input" >
    </div>
</div>


<div class="layui-form-item">
    <div class="layui-input-block">
        <button type="submit" class="layui-btn" lay-submit="" lay-filter="formDemo">确 认</button>
        <a  class="layui-btn" href="{{route('admin.student')}}" >返 回</a>
    </div>
</div>