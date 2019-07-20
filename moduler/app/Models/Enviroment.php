<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 09 Jul 2019 03:08:20 +0000.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Enviroment
 * 
 * @property int $id
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @property string $name
 * @property int $fk_user
 * @property int $estado
 *
 * @package App\Models
 */
class Enviroment extends Eloquent
{
	protected $table = 'enviroment';

	protected $casts = [
		'fk_user' => 'int',
		'estado' => 'int'
	];

	protected $fillable = [
		'name',
		'fk_user',
		'estado'
	];
}
