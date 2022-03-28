package fr.ChopineDuCoin.api.model;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.Collection;

@Entity
public class User implements UserDetails {

    @Id
    private String username;
    private String password;
    private boolean enabled;
    
    @ManyToOne
	@JoinColumn(name="idAuthorities")
	private Authorities idAuthorities;

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }
    
    public boolean isEnabled() {
        return enabled;
    }

	public Authorities getIdAuthorities() {
		return idAuthorities;
	}

	public void setIdAuthorities(Authorities idAuthorities) {
		this.idAuthorities = idAuthorities;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public Collection<? extends GrantedAuthority> getAuthorities() {
		return null;
	}

	public User() {
	}
	
	public User(String username, String password, boolean enabled, Authorities idAuthorities) {
		super();
		this.username = username;
		this.password =  new BCryptPasswordEncoder().encode(password);
		this.enabled = enabled;
		this.idAuthorities = idAuthorities;
	}

	public User(String username, String password) {
		this.username = username;
		PasswordEncoder encoder = new BCryptPasswordEncoder();
		this.password = encoder.encode(password);
		System.out.println(this.password);
		enabled = true;
	}

	public boolean isAccountNonExpired() {
		return false;
	}

	public boolean isAccountNonLocked() {
		return false;
	}
	public boolean isCredentialsNonExpired() {
        return true;
    }

	
}
