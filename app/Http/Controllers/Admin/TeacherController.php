<?php

namespace App\Http\Controllers\Admin;

use App\Models\Teacher;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class TeacherController extends Controller
{
    public function data(Request $request)
    {
        $teacher = Teacher::query();
//        if ($request->get('name')){
//            $model = $teacher->where('name','like','%'.$request->get('name').'%');
//        }
//        if ($request->get('phone')){
//            $teacher = $teacher->where('phone','like','%'.$request->get('phone').'%');
//        }
        $res = $teacher->orderBy('created_at','desc')->paginate($request->get('limit',30))->toArray();
        $data = [
            'code' => 0,
            'msg'   => '正在请求中...',
            'count' => $res['total'],
            'data'  => $res['data']
        ];
        return response()->json($data);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.teacher.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.teacher.create');
    }



    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $teacher = $request->all();
        $user = \App\Models\User::create([
            'username' => $request->get('number'),
            'password' => bcrypt($request->get('number')),
            'name' => $request->get('name'),
            'uuid' => \Faker\Provider\Uuid::uuid()
        ]);
        //$roles = array("7");
        //$user->identity_card()->save($card);
        //$user->syncRoles($roles)
        if ($user->teacher()->create($teacher)){
            return redirect()->to(route('admin.teacher'))->with(['status'=>'添加老师成功']);
        }
        return redirect()->to(route('admin.teacher'))->withErrors('系统错误');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $teachers = Teacher::findOrFail($id);
        return view('admin.teacher.edit',compact('teachers'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $teacher = Teacher::findOrFail($id);
        $data = $request->except('_method', '_token');
        if ($teacher->update($data)){
            return redirect()->to(route('admin.teacher'))->with(['status'=>'更新教师成功']);
        }
        return redirect()->to(route('admin.teacher'))->withErrors('系统错误');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $ids = $request->get('ids');
        if (empty($ids)){
            return response()->json(['code'=>1,'msg'=>'请选择删除项']);
        }
        if (Teacher::destroy($ids)){
            return response()->json(['code'=>0,'msg'=>'删除成功']);
        }
        return response()->json(['code'=>1,'msg'=>'删除失败']);
    }
}
