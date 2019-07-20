<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ClientVerification extends Controller
{
    public function checkClient(Request $request)
    {
        try {
            $modulerHost = env('MODULER_HOST');
            $moduleName = env('MODULE_NAME');
            $clientIdentificator = $request->clientIdentificator;

            $http = new \GuzzleHttp\Client();

            $response = $http->post($modulerHost . 'oauth/token', [
                'form_params' => [
                    'grant_type' => 'client_credentials',
                    'client_id' => env('CLIENT_ID'),
                    'client_secret' => env('CLIENT_SECRET'),
                    'scope' => '',
                ],
            ]);
            $data = json_decode((string) $response->getBody(), true);
            return $data;
            if (!isset($data['access_token'])) {
                throw new \Exception("Error Processing Request", 1);
            }

            $response = $http->post($modulerHost . 'api/clientVerification', [
                'headers' => [
                    'Authorization' => 'Bearer ' . $data['access_token']
                ],
                'form_params' => [
                    'moduleName' => $moduleName,
                    'clientIdentificator' => $clientIdentificator,
                    'authorization' => env('CLIENT_ID')
                ]
            ]);

            $data = json_decode((string) $response->getBody(), true);

            if (!isset($data['access'])) {
                throw new \Exception("Error Processing Request", 1);
            }
            return json_encode([
                'grant_type' => 'password',
                'client_id' => env('MY_CLIENT_ID'),
                'client_secret' => env('MY_CLIENT_SECRET'),
                'username' => 'sebasjsv97@gmail.com',
                'password' => 'mecanica22',
                'scope' => '',
            ]);
            if ($data['access']) {
                $response = $http->post('http://127.0.0.1:8080/oauth/token', [
                    'form_params' => [
                        'grant_type' => 'password',
                        'client_id' => env('MY_CLIENT_ID'),
                        'client_secret' => env('MY_CLIENT_SECRET'),
                        'username' => 'sebasjsv97@gmail.com',
                        'password' => 'mecanica22',
                        'scope' => '',
                    ],
                ]);

                return json_decode((string) $response->getBody(), true);

                $output = [
                    'access' => 1,
                    'token' => 123
                ];
            } else {
                $output = [
                    'access' => 0
                ];
            }
        } catch (\Throwable $th) {
            $output['message'] = $th->getMessage();
        }
        return json_encode($output);
    }
}
