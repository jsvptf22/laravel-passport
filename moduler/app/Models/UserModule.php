<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 09 Jul 2019 03:08:20 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Module
 * 
 * @property int $id
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @property string $name
 * @property string $version
 * @property int $estado
 *
 * @package App\Models
 */
class UserModule extends Eloquent
{
    protected $table = 'user_module';

    protected $casts = [
        'fk_module' => 'int',
        'fk_user' => 'int',
        'fk_client' => 'int',
        'estado' => 'int'
    ];

    protected $fillable = [
        'fk_module',
        'fk_user',
        'fk_client',
        'estado'
    ];
}
