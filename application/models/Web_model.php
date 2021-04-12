<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Web_model extends CI_Model
{

    function __construct()
    {
        parent::__construct();
    }

    // datatables
    // get all

    // function get_all_kasir()
    // {
    //     $kasir = 'select * from kasir';
    //     return $this->db->query($kasir)->result();
    // }

    function get_all_kategori()
    {
        return $this->db->get("kategori")->result();
    }
    
    function get_all_menu()
    {
        return $this->db->get("menu1")->result();
    }
    
    function get_by_id($id)
    {
        $this->db->where("id_menu", $id);
        return $this->db->get("menu1")->row();
    }    

    function get_by_idkat($id)
    {
        $this->db->where("id_kategori", $id);
        return $this->db->get("kategori")->row();
    }

    function get_all_order()
    {
        $this->db->limit(10, 0);
        return $this->db->get("order")->result();
    }

    function get_all_order_detail()
    {
        return $this->db->get("order_detail")->result();
    }

    function get_all_user()
    {
        return $this->db->get("user")->result();
    }
    function get_all_slider()
    {
        return $this->db->get("slider")->result();
    }

    function insert($data){
        $this->db->insert('menu', $data);
    }
    // get data by id
    function get_all($table)
    {
        return $this->db->get($table)->result();
    }  
    function get_all_where($table,$field, $id)
    {
        $this->db->where($field, $id);
        return $this->db->get($table);
    }  
    function insertall($table,$data)
    {
        $this->db->insert($table, $data);
    }
    function update($table, $where,$id, $data)
    {
        $this->db->where($where, $id);
        $this->db->update($table, $data);
    }
}

/* End of file Info_model.php */
/* Location: ./application/models/Info_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2019-11-17 23:46:01 */
/* http://harviacode.com */