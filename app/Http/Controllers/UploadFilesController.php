<?php

namespace App\Http\Controllers;

use App\UploadFiles;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UploadFilesController extends Controller
{
    public function getAll(){
      return response()->json(UploadFiles::all());
    }

    public function getFiles($page = 1, $keyword = null){
      $paginate = ($page-1) * 6;
      if($keyword === null) {
        $files = DB::table('upload_files')
                    ->skip($paginate)->take(6)->whereNull("deleted_at")
                    ->orderBy('created_at', 'desc')->get();
      }else{
        $files = DB::table('upload_files')
                ->where("name", "LIKE","%$keyword%")
                ->orWhere("filesrc", "LIKE", "%$keyword%")
                ->skip($paginate)->take(6)->whereNull("deleted_at")
                ->orderBy('created_at', 'desc')->get();
      }

      return response()->json($files);
    }

    public function submitFile(Request $request){

      $this->validate($request, [
        'name' => 'required',
        'fileupload'=>'required|mimes:txt,doc,docx,pdf,png,jpeg,jpg,gif|max:2048',
      ]);

      if($request->hasFile('fileupload')){

        $file = $request->file('fileupload');

        $ext = $file->getClientOriginalExtension();
        $fileName = "doc_".time().".".$ext;

        $destination = base_path('public')."/documents/" ;
        $file->move($destination, $fileName);

        $upload = UploadFiles::create([
          'name' => $request->name,
          'filesrc' => $fileName
        ]);

        return response()->json($upload, 201);
      }
    }

    public function deleteFile($id)
    {
        $file = UploadFiles::find($id);
        if ($file !== null) {
          unlink( base_path('public')."/documents/".$file->filesrc );
          UploadFiles::findOrFail($id)->delete();
        }
        return response('Deleted Successfully', 200);
    }

    public function showHistory($page = null)
    {
      if ($page !== null) {
        $paginate = ($page-1) * 6;
        $files = DB::table('upload_files')->skip($paginate)->take(6)->get();
      }else{
        $files = DB::table('upload_files')->take(6)->get();
      }
      return response()->json($files);
    }

}

?>
