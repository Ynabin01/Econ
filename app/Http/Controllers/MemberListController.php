<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MemberListController extends Controller
{
    //
    public function MemberListformStore(Request $req){
        // $validated = $req->validate([
        //     'name' => 'required',
        //     'number' => 'required',
        //  ]);
           //return $req['country'];
            $contact = new Memberform;
            $contact->membership_no = $req['gov_reg_date'];
            $contact->company_name = $req['owner_name'];
            $contact->address = $req['company_name'];
            $contact->contact_info = $req['company_type'];
            $contact->contact_person = $req['business_type'];
           
            $contact->save();
            if($contact){
                Session::flash('contact', 'Thanks for submitting'); 
                return redirect('/');
            }
            else{
                Session::flash('contact_error', 'Sorry form submitted failed'); 
                return redirect('/');
            }

      }
}
