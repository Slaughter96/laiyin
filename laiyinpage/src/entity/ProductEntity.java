package entity;

import java.util.Date;

public class ProductEntity {
    //产品编号
    private String id;
    //产品图片
    private String img;
    //上架日期
    private Date update;
    //产品分类
    private String type;

    public void setId(String id){
        this.id = id;
    }

    public String getId(){
        return id;
    }

    public void setImg(String img){
        this.img = img;
    }

    public String getImg(){
        return img;
    }

    public void setUpdate(Date update){
        this.update = update;
    }

    public Date getUpdate(){
        return update;
    }

    public void setType(String type){
        this.type = type;
    }

    public String getType(){
        return type;
    }
}
