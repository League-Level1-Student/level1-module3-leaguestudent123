package _99_extra;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.net.MalformedURLException;
import java.net.URL;

import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class suprise implements ActionListener {
	
	JPanel panel= new JPanel();
	JFrame frame=new JFrame();
	JButton trick=new JButton("trick");
	JButton treat=new JButton("treat");
	
	suprise(){
		panel.add(trick);
		panel.add(treat);
		frame.add(panel);
	frame.setVisible(true);
	frame.pack();
	frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	trick.addActionListener(this);
	treat.addActionListener(this);
	}
	
public static void main(String[] args) {
	
	suprise s = new suprise();
}

@Override
public void actionPerformed(ActionEvent e) {
if (e.getSource()==trick) {
	showPictureFromTheInternet("https://i.redd.it/h4s6eae8jbn21.jpg");	
}
	if (e.getSource()==treat) {
		showPictureFromTheInternet("https://www.claymontschools.org/d/cursedworld/wp-content/uploads/2019/10/is7yqy05ajw11.jpg");
	}
}
private void showPictureFromTheInternet(String imageUrl) {
    try {
        URL url = new URL(imageUrl);
        Icon icon = new ImageIcon(url);
        JLabel imageLabel = new JLabel(icon);
        JFrame frame = new JFrame();
        frame.add(imageLabel);
        frame.setVisible(true);
        frame.pack();
    } catch (MalformedURLException e) {
        e.printStackTrace();
    }
}
}
