/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ReceptionSystem;

import java.awt.event.KeyEvent;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Temperance
 */
public class Login extends javax.swing.JDialog {

    /**
     * Creates new form Login
     */
    Database database = new Database();
    
    public Login(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jTextFieldUsername = new javax.swing.JTextField();
        jButtonLogin = new javax.swing.JButton();
        jLabelCheck = new javax.swing.JLabel();
        jPasswordField = new javax.swing.JPasswordField();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Login");

        jTextFieldUsername.setFont(new java.awt.Font("宋体", 0, 14)); // NOI18N
        jTextFieldUsername.setName("jTextFieldUsername"); // NOI18N

        jButtonLogin.setFont(new java.awt.Font("宋体", 0, 14)); // NOI18N
        jButtonLogin.setText("Login");
        jButtonLogin.setName("jButtonLogin"); // NOI18N
        jButtonLogin.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jButtonLoginMouseClicked(evt);
            }
        });

        jLabelCheck.setFont(new java.awt.Font("宋体", 0, 14)); // NOI18N
        jLabelCheck.setName("jLabelCheck"); // NOI18N

        jPasswordField.setFont(new java.awt.Font("宋体", 0, 14)); // NOI18N
        jPasswordField.setName("jPasswordField"); // NOI18N
        jPasswordField.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jPasswordFieldKeyPressed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(75, 75, 75)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jLabelCheck, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jButtonLogin)
                    .addComponent(jTextFieldUsername, javax.swing.GroupLayout.DEFAULT_SIZE, 226, Short.MAX_VALUE)
                    .addComponent(jPasswordField))
                .addContainerGap(99, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(55, 55, 55)
                .addComponent(jTextFieldUsername, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jPasswordField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(34, 34, 34)
                .addComponent(jButtonLogin)
                .addGap(31, 31, 31)
                .addComponent(jLabelCheck, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(73, Short.MAX_VALUE))
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void jButtonLoginMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jButtonLoginMouseClicked
        try {
            // TODO add your handling code here:
            database.init();
            ReceptionSystem sys = new ReceptionSystem(database);
            if(!jPasswordField.getText().isEmpty() && jPasswordField.getText().equals(database.login(jTextFieldUsername.getText()))){
                this.setVisible(false);
                sys.setVisible(true);
            }
            else{
                jLabelCheck.setText("Username or password not corrent.");
            }
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }        
    }//GEN-LAST:event_jButtonLoginMouseClicked

    private void jPasswordFieldKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jPasswordFieldKeyPressed
        // TODO add your handling code here:
        if (evt.getKeyCode() == KeyEvent.VK_ENTER)
            try {
            // TODO add your handling code here:
            database.init();
            ReceptionSystem sys = new ReceptionSystem(database);
            if(!jPasswordField.getText().isEmpty() && jPasswordField.getText().equals(database.login(jTextFieldUsername.getText()))){
                this.setVisible(false);
                sys.setVisible(true);
            }
            else{
                jLabelCheck.setText("Username or password not corrent.");
            }
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }       
    }//GEN-LAST:event_jPasswordFieldKeyPressed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the dialog */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                Login dialog = new Login(new javax.swing.JFrame(), true);
                dialog.addWindowListener(new java.awt.event.WindowAdapter() {
                    @Override
                    public void windowClosing(java.awt.event.WindowEvent e) {
                        System.exit(0);
                    }
                });
                dialog.setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonLogin;
    private javax.swing.JLabel jLabelCheck;
    private javax.swing.JPasswordField jPasswordField;
    private javax.swing.JTextField jTextFieldUsername;
    // End of variables declaration//GEN-END:variables
}