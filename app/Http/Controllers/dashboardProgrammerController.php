<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Projects;

class dashboardProgrammerController extends Controller
{
    public function index()
    {
        $programmers_id=session()->get('dataLoginProgrammers')['id'];
        $jumlahProjectWaitings=Projects::where('progress_status', 'Menunggu')->count();
        $jumlahProjectOnProgress=Projects::where('progress_status', 'On Progress')->where('programmers_id', $programmers_id)->count();
        $jumlahProjectFinished=Projects::where('progress_status', 'Selesai')->where('programmers_id', $programmers_id)->count();

        // 3 minggu deatline
        // $Projects3Weeks=order_project::where('status_pengerjaan', '=', 'On Progress')->where('developers_id', $developers_id)->get();


        return view('programmers.pages.dashboard', compact('jumlahProjectWaitings', 'jumlahProjectOnProgress', 'jumlahProjectFinished'));
    }
}
