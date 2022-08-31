<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MemberList;
use App\Memberform;
use App\Models\Navigation;
use Session;

class MemberListController extends Controller
{
    //
    public function MemberListformStore(Request $req){
        // $validated = $req->validate([
        //     'name' => 'required',
        //     'number' => 'required',
        //  ]);
           //return $req['country'];
            $memberlist = new MemberList;
            $memberlist->membership_no = $req['membership_no'];
            $memberlist->company_name = $req['company_name'];
            $memberlist->address = $req['address'];
            $memberlist->contact_info = $req['contact_info'];
            $memberlist->contact_person = $req['contact_person'];
           
            $memberlist->save();
            if($memberlist){
                Session::flash('memberlist', 'Thanks for submitting'); 
                return redirect('/admin/MemberList');
            }
            else{
                Session::flash('memberlist_error', 'Sorry form submitted failed'); 
                return redirect('/admin/MemberList');
            }

      }
      public function MemberLists(){
        //$navigations  = Navigation::where('page_type','Job')->orderBy('position','ASC')->get();
        $members = MemberList::all();
        // return $members;

       // return $members;
        //return $jobs;
        //return $jobs->navigation;
        $categories = Navigation::where('page_type','Group')->where('parent_page_id',0)->get();
        //return $navigations;
        return view('admin.member.memberfinal-list', compact('members','categories'));
    }

    public function MemberList(){
        //$navigations  = Navigation::where('page_type','Job')->orderBy('position','ASC')->get();
        $members = Memberform::all();

       // return $members;
        //return $jobs;
        //return $jobs->navigation;
        $categories = Navigation::where('page_type','Group')->where('parent_page_id',0)->get();
        //return $navigations;
        return view('admin.member.membership-list', compact('members','categories'));
    }
    public function MemberListsDelete($id){
        $member = MemberList::find($id);
        $member->delete();
        return redirect()->back();//->withErrors($validator)->withInput();
    }
    
    public function ShowMemberForm(){
        //$navigations  = Navigation::where('page_type','Job')->orderBy('position','ASC')->get();
        // $members = Memberform::all();

       // return $members;
        //return $jobs;
        //return $jobs->navigation;
        // $categories = Navigation::where('page_type','Group')->where('parent_page_id',0)->get();
        //return $navigations;
        return view('admin.member.memberform');
    }
    public function membershipformDelete($id){
        
        $member = MemberForm::find($id);
        $member->delete();
        return redirect()->back();//->withErrors($validator)->withInput();
    }

    public function memberlistShow(){
        $members = MemberList::all();
        return view("website.memberlist")->with(['members'=>$members]);
    }
    public function memberformShow(){
        $members = memberForm::all();
        return view("website.memberform")->with(['members'=>$members]);
    }
    
    
      
}
