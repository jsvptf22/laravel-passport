<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Module;
use App\Models\UserModule;
use App\Models\Enviroment;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class ClientVerification extends Controller
{
    public function checkClient(Request $request)
    {
        try {
            $clientIdentificator = $request->input('clientIdentificator');
            $moduleName = $request->input('moduleName');
            $clientId = $request->input('authorization');

            $Module = Module::where('name', $moduleName)->first();

            if (!$Module) {
                throw new ModelNotFoundException("El módulo {$moduleName} no se encuentra vigente", 1);
            }

            $UserModule = UserModule::where('fk_module', $Module->id)
                ->where('fk_client', $clientId)
                ->where('estado', 1)
                ->first();

            if (!$UserModule) {
                throw new ModelNotFoundException("El módulo no se encuentra vigente", 1);
            }

            $Enviroment = Enviroment::where('name', $clientIdentificator)
                ->where('estado', 1)
                ->first();

            if (!$Enviroment) {
                throw new ModelNotFoundException("El ambiente no se encuentra vigente", 1);
            }

            if ($Enviroment->fk_user != $UserModule->fk_user) {
                throw new ModelNotFoundException("El ambiente no pertenece al cliente", 1);
            }

            $data = [
                'access' => 1,
                'scope' => $UserModule->access_type
            ];
        } catch (\Throwable $th) {
            $data = [
                'access' => 0,
                'message' => $th->getMessage()
            ];
        }

        return json_encode($data);
    }
}
