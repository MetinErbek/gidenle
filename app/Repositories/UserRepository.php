<?php

namespace App\Repositories;

use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserRepository
{
    public function findByEmail($email)
    {
        return User::where('user_email', $email)->first();
    }

    public function login($email, $password)
    {
        $user = User::where('user_email', $email)
                    ->where('user_pass', md5($password))
                    ->first();
        return $user;
    }

    public function create(array $data)
    {
        if (isset($data['user_pass'])) {
            $data['user_pass'] = md5($data['user_pass']);
        }
        return User::create($data);
    }

    public function createIfNotExist(array $data)
    {
        $user = $this->findByEmail($data['user_email']);
        if (!$user) {
            $user = $this->create([
                'user_email' => $data['user_email'],
                'user_pass' => Hash::make($data['user_pass']),
                'user_name' => isset($data['user_name']) ? $data['user_name'] : '',
                'user_phone' => isset($data['user_phone']) ? $data['user_phone'] : '',
            ]);
        } 
        return $user;
    }
}
