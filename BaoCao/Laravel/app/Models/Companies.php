<?php

namespace App\Models;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
class Companies extends Authenticatable
{
    protected $table = 'companies';
    protected $primaryKey = 'company_id';
    protected $fillable = [
        'company_name','company-name','company_web','company_address','company_code','company_phone','company_image'
    ];
    public $timestamps = true;
    use HasFacTory, Notifiable;
}
