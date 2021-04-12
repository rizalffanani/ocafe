<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tes_model extends CI_Model
{

    public $table = 'tes';
    public $id = 'id';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // datatables
    function json() {
        $this->datatables->select('id,judul,deskripsi,images');
        $this->datatables->from('tes');
        //add this line for join
        //$this->datatables->join('table2', 'tes.field = table2.field');
        $this->datatables->add_column('action', anchor(site_url('admin/tes/read/$1'),'Read')." | ".anchor(site_url('admin/tes/update/$1'),'Update')." | ".anchor(site_url('admin/tes/delete/$1'),'Delete','onclick="javasciprt: return confirm(\'Are You Sure ?\')"'), 'id');
        return $this->datatables->generate();
    }

    // get all
    function get_all()
    {
        $this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

    // get data by id
    function get_by_id($id)
    {
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }
    
    // get total rows
    function total_rows($q = NULL) {
        $this->db->like('id', $q);
	$this->db->or_like('judul', $q);
	$this->db->or_like('deskripsi', $q);
	$this->db->or_like('images', $q);
	$this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        $this->db->order_by($this->id, $this->order);
        $this->db->like('id', $q);
	$this->db->or_like('judul', $q);
	$this->db->or_like('deskripsi', $q);
	$this->db->or_like('images', $q);
	$this->db->limit($limit, $start);
        return $this->db->get($this->table)->result();
    }

    // insert data
    function insert($data)
    {
        $this->db->insert($this->table, $data);
    }

    // update data
    function update($id, $data)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->table, $data);
    }

    // delete data
    function delete($id)
    {
        $this->db->where($this->id, $id);
        $this->db->delete($this->table);
    }

}

/* End of file Tes_model.php */
/* Location: ./application/models/Tes_model.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2020-09-09 05:59:20 */
/* http://harviacode.com */