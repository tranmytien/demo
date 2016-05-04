package model;

import java.awt.List;
import java.lang.reflect.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.TreeMap;

import beans.Food;
import controller.ConnectSQL;
import datadao.SanPham;

public class Cart {
	TreeMap<String,SanPham> data = new TreeMap<String,SanPham>();

	public Cart() {
		data = new TreeMap<String,SanPham>();
	}

	public Cart(TreeMap<String,SanPham> data) {
		this.data = data;
	}

	// Tra ve so luong sp trong gio hang
	public int side() {
		return data.size();
	}

	// tra ve so tien can phai thanh toan trong gio hang
	public int total() {
			Collection<SanPham> lsp = data.values();
			Iterator<SanPham> it = lsp.iterator();
			int total = 0;
			SanPham sp = null;
			while ( it.hasNext()){
				sp = it.next();
				total += sp.getCount()*(sp.getPrice()- sp.getGiamgia()*sp.getPrice());
			}
		
		return total;
	}

	// them 1 sp vao gio hang
	public boolean add(SanPham sp) {
		SanPham sp1 = data.get(sp.getId());
		if(sp1 == null){
			data.put(sp.getId(), sp);
			return true;
		}
		sp1.setCount(sp1.getCount()+1);
		return true;
		}
		
	public Iterator<SanPham> getIt(){
		Collection<SanPham> lsp = data.values();
		Iterator<SanPham> it = lsp.iterator();
		return it;
	}
	public boolean del(String id){
		return data.remove(id) == null ? false :true;
	}
	public boolean update(String id, String count){
		if(id == null) id = "1";
		SanPham sp = data.get(id);
		if(sp != null){
			
			if(count == null) count= "123";
			sp.setCount(Integer.parseInt(count));
			return true;
		}
		return false;
		}
	public boolean clear(){
	data = new TreeMap<String,SanPham>();
	return true;
	}
	
	}


