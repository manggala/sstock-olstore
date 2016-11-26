<?php namespace App\Http\Controllers;
/*
lapantiga.com | Web & Mobile App Developer. Jl. Gubeng Kertajaya 9C no.27 A Surabaya - Indonesia, +62.856.3437.495 */

use Illuminate\Foundation\Bus\DispatchesCommands;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;

abstract class Controller extends BaseController {

	use DispatchesCommands, ValidatesRequests;

}
