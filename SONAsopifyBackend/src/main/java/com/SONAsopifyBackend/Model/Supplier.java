package com.SONAsopifyBackend.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Supplier {
@Id
@GeneratedValue
private int S_id;
private String S_name;
public int getS_id() {
	return S_id;
}
public void setS_id(int s_id) {
	S_id = s_id;
}
public String getS_name() {
	return S_name;
}
public void setS_name(String s_name) {
	S_name = s_name;
}


}
