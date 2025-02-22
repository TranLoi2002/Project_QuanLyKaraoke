/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package gui;
import javax.swing.GroupLayout.Alignment;

import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.List;

import javax.swing.GroupLayout;
import javax.swing.LayoutStyle.ComponentPlacement;
import javax.swing.table.DefaultTableModel;

import connectDB.ConnectDB;
import dao.DichVu_DAO;
import entity.DichVu;
import javax.swing.JPanel;
import javax.swing.JLabel;
import javax.swing.JTextField;
import java.awt.Font;
import java.awt.Color;

/**
 *
 * @author ADMIN
 */
public class JPanel_ThongKeDVUaThich extends javax.swing.JPanel {

	private DefaultTableModel modelDVUT;
	private DichVu_DAO dichVu_DAO;
    /**
     * Creates new form ThongKeDVUaThich
     */
    public JPanel_ThongKeDVUaThich() {
        initComponents();
        modelDVUT = (DefaultTableModel) tblDVUaThich.getModel();
		try {
			ConnectDB.getInstance().connect();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		dichVu_DAO = new DichVu_DAO();
//		ct_HoaDon_DAO = new CT_HoaDon_DAO();
		DocDuLieuDatabaseVaoTable();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        pnlDSDVUaThich = new javax.swing.JPanel();
        pnlThongSoThongKe = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblDVUaThich = new javax.swing.JTable();

        setPreferredSize(new java.awt.Dimension(1250, 750));

        pnlDSDVUaThich.setBorder(javax.swing.BorderFactory.createTitledBorder("Danh Sách Dịch Vụ Ưa Thích"));

        pnlThongSoThongKe.setBackground(new java.awt.Color(204, 204, 204));
        pnlThongSoThongKe.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)), "Thông Số Thống Kê"));
        
        lblTongDoanhThu = new JLabel("Tổng Doanh Thu :");
        lblTongDoanhThu.setFont(new Font("Tahoma", Font.BOLD, 30));
        
        txtTongDoanhThu = new JLabel("0");
        txtTongDoanhThu.setForeground(new Color(255, 0, 0));
        txtTongDoanhThu.setFont(new Font("Tahoma", Font.BOLD, 34));

        javax.swing.GroupLayout pnlThongSoThongKeLayout = new javax.swing.GroupLayout(pnlThongSoThongKe);
        pnlThongSoThongKeLayout.setHorizontalGroup(
        	pnlThongSoThongKeLayout.createParallelGroup(Alignment.LEADING)
        		.addGroup(pnlThongSoThongKeLayout.createSequentialGroup()
        			.addGap(28)
        			.addComponent(lblTongDoanhThu, GroupLayout.PREFERRED_SIZE, 273, GroupLayout.PREFERRED_SIZE)
        			.addPreferredGap(ComponentPlacement.UNRELATED)
        			.addComponent(txtTongDoanhThu, GroupLayout.PREFERRED_SIZE, 437, GroupLayout.PREFERRED_SIZE)
        			.addContainerGap(418, Short.MAX_VALUE))
        );
        pnlThongSoThongKeLayout.setVerticalGroup(
        	pnlThongSoThongKeLayout.createParallelGroup(Alignment.LEADING)
        		.addGroup(pnlThongSoThongKeLayout.createSequentialGroup()
        			.addContainerGap()
        			.addGroup(pnlThongSoThongKeLayout.createParallelGroup(Alignment.BASELINE)
        				.addComponent(lblTongDoanhThu)
        				.addComponent(txtTongDoanhThu))
        			.addContainerGap(28, Short.MAX_VALUE))
        );
        pnlThongSoThongKe.setLayout(pnlThongSoThongKeLayout);
        
    

        tblDVUaThich.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
            },
            new String [] {
                "Mã Dịch Vụ ", "Tên Dịch Vụ", "Giá Dịch Vụ ", "Số Lượng Dịch Vụ Sử Dụng","Tổng Thành Tiền (VNĐ)"
            }
        ));
        tblDVUaThich.setShowGrid(true);
        jScrollPane1.setViewportView(tblDVUaThich);

        javax.swing.GroupLayout pnlDSDVUaThichLayout = new javax.swing.GroupLayout(pnlDSDVUaThich);
        pnlDSDVUaThichLayout.setHorizontalGroup(
        	pnlDSDVUaThichLayout.createParallelGroup(Alignment.LEADING)
        		.addComponent(pnlThongSoThongKe, Alignment.TRAILING, GroupLayout.DEFAULT_SIZE, 1186, Short.MAX_VALUE)
        		.addGroup(pnlDSDVUaThichLayout.createSequentialGroup()
        			.addGap(18)
        			.addComponent(jScrollPane1, GroupLayout.PREFERRED_SIZE, 1135, GroupLayout.PREFERRED_SIZE)
        			.addGap(33))
        );
        pnlDSDVUaThichLayout.setVerticalGroup(
        	pnlDSDVUaThichLayout.createParallelGroup(Alignment.LEADING)
        		.addGroup(Alignment.TRAILING, pnlDSDVUaThichLayout.createSequentialGroup()
        			.addContainerGap()
        			.addComponent(jScrollPane1, GroupLayout.DEFAULT_SIZE, 575, Short.MAX_VALUE)
        			.addPreferredGap(ComponentPlacement.UNRELATED)
        			.addComponent(pnlThongSoThongKe, GroupLayout.PREFERRED_SIZE, 85, GroupLayout.PREFERRED_SIZE)
        			.addContainerGap())
        );
        pnlDSDVUaThich.setLayout(pnlDSDVUaThichLayout);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        layout.setHorizontalGroup(
        	layout.createParallelGroup(Alignment.LEADING)
        		.addGroup(layout.createSequentialGroup()
        			.addGap(18)
        			.addComponent(pnlDSDVUaThich, GroupLayout.PREFERRED_SIZE, 1198, GroupLayout.PREFERRED_SIZE)
        			.addContainerGap(34, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
        	layout.createParallelGroup(Alignment.LEADING)
        		.addGroup(layout.createSequentialGroup()
        			.addContainerGap()
        			.addComponent(pnlDSDVUaThich, GroupLayout.PREFERRED_SIZE, 711, GroupLayout.PREFERRED_SIZE)
        			.addContainerGap(29, Short.MAX_VALUE))
        );
        this.setLayout(layout);
    }// </editor-fold>//GEN-END:initComponents

    public void DocDuLieuDatabaseVaoTable() {
    	modelDVUT.setRowCount(0);
    	double tong = 0;
		List<DichVu> list = dichVu_DAO.getDichVuUaThich();
		DecimalFormat formatter = new DecimalFormat("###,###,###");
		
		for (DichVu dv : list) {
			Object [] row = {dv.getMaDichVu(),dv.getTenDichVu(),formatter.format(dv.getGiaDichVu()),
					dichVu_DAO.getSLBanTheoMa(dv.getMaDichVu()) , formatter.format(dichVu_DAO.getTongDTTheoMa(dv.getMaDichVu()))};
			modelDVUT.addRow(row);
			
			tong += dichVu_DAO.getTongDTTheoMa(dv.getMaDichVu());
			String tt = formatter.format(tong) + " VNĐ";
	        txtTongDoanhThu.setText(tt);
		}
		
		
		
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JPanel pnlDSDVUaThich;
    private javax.swing.JPanel pnlThongSoThongKe;
    private javax.swing.JTable tblDVUaThich;
    private JLabel lblTongDoanhThu;
    private JLabel txtTongDoanhThu;
}
