package GUI;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.SwingConstants;

import Code.StudentHashMap;

import java.awt.Font;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

/**
 * The Class MainMenu defines the Main Menu of our program. It also has the
 * buttons that load either the Add, Remove or View Students menu.
 * 
 * @author JigarDP&Abdullah
 * @version 1.0
 */
public class MainMenu {

	/** The frame. */
	private JFrame frame;

	/** Our own implemented Student HashMap which will be used by our GUI. */
	public static StudentHashMap studentHashMap = new StudentHashMap();

	/**
	 * Launch the application.
	 *
	 * @param args
	 *            the arguments
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					MainMenu window = new MainMenu();
					window.frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public MainMenu() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		studentHashMap.addStudent("Abdullah", "Almusallam", "CS", "Sophmore", 3.8);
		studentHashMap.addStudent("Jigar", "Prajapati", "CS", "Junior", 3.6);
		studentHashMap.addStudent("Ryan", "Couch", "CS", "Senior", 3.0);
		studentHashMap.addStudent("Nate", "Irwin", "CS", "Senior", 0.2);
		studentHashMap.addStudent("Bat", "Man", "Math", "Senior", 1.0);
		studentHashMap.addStudent("Super", "Man", "Biology", "Senior", 0.5);
		studentHashMap.addStudent("Iron", "Man", "CS", "Sophmore", 2.0);
		studentHashMap.addStudent("Spider", "Man", "CS", "Junior", 1.8);
		studentHashMap.addStudent("Jon", "Snow", "CS", "Senior", 2.7);
		studentHashMap.addStudent("Rick", "James", "Math", "Senior", 3.8);
		studentHashMap.addStudent("Tyrion", "Lannister", "IT", "Senior", 3.7);
		studentHashMap.addStudent("Samwell", "Tarly", "Biology", "Senior", 0.5);
		studentHashMap.addStudent("Khal", "Drogo", "CS", "Junior", 1.8);
		studentHashMap.addStudent("Khalisi", "Daenerys", "Chemistry", "Senior", 2.7);
		studentHashMap.addStudent("The", "Rock", "Math", "Senior", 3.4);
		studentHashMap.addStudent("Sansa", "Stark", "IT", "Senior", 3.2);
		studentHashMap.addStudent("Arya", "Stark", "Biology", "Senior", 0.8);
		studentHashMap.addStudent("Robb", "Stark", "math", "Freshmen", 3.6);
		studentHashMap.addStudent("Benjen", "Stark", "Geography", "Senior", 3.6);
		
		

		frame = new JFrame();
		frame.setBounds(100, 100, 670, 457);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setResizable(false);
		frame.getContentPane().setLayout(null);

		JLabel lblNewLabel = new JLabel("Student Database");
		lblNewLabel.setFont(new Font("Serif", Font.PLAIN, 36));
		lblNewLabel.setHorizontalAlignment(SwingConstants.CENTER);
		lblNewLabel.setBounds(10, 11, 654, 54);
		frame.getContentPane().add(lblNewLabel);

		JButton btnNewButton = new JButton("Add Student");
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				EventQueue.invokeLater(new Runnable() {
					public void run() {
						try {
							//loads the add student menu
							loadAddStudent window = new loadAddStudent(studentHashMap); 
							window.frame.setVisible(true);
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
				});
			}
		});
		btnNewButton.setBounds(143, 76, 364, 40);
		frame.getContentPane().add(btnNewButton);

		JButton btnRemoveStudent = new JButton("Remove Student");
		btnRemoveStudent.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				EventQueue.invokeLater(new Runnable() {
					public void run() {
						try {
							//loads the remove student menu
							loadRemoveStudent window = new loadRemoveStudent(studentHashMap); 
							window.frame.setVisible(true);
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
				});

			}
		});
		btnRemoveStudent.setBounds(143, 142, 364, 40);
		frame.getContentPane().add(btnRemoveStudent);

		JButton btnViewStudentRecords = new JButton("View Student Records");
		btnViewStudentRecords.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				EventQueue.invokeLater(new Runnable() {
					public void run() {
						try {
							//loads the view student menu
							loadViewStudent window = new loadViewStudent(studentHashMap); 
							window.frame.setVisible(true);
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
				});
			}
		});
		btnViewStudentRecords.setBounds(143, 210, 364, 40);
		frame.getContentPane().add(btnViewStudentRecords);

		JButton btnExit = new JButton("Exit");
		btnExit.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				System.exit(0);// Exits the menu
			}
		});
		btnExit.setBounds(231, 300, 189, 40);
		frame.getContentPane().add(btnExit);

		// frame.setUndecorated(true);
		// frame.getRootPane().setWindowDecorationStyle(JRootPane.NONE);
	}

}
