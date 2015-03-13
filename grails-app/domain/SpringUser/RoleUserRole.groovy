package SpringUser

import org.apache.commons.lang.builder.HashCodeBuilder

class RoleUserRole implements Serializable {

	private static final long serialVersionUID = 1

	Role role
	UserRole userRole

	boolean equals(other) {
		if (!(other instanceof RoleUserRole)) {
			return false
		}

		other.role?.id == role?.id &&
		other.userRole?.id == userRole?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (role) builder.append(role.id)
		if (userRole) builder.append(userRole.id)
		builder.toHashCode()
	}

	static RoleUserRole get(long roleId, long userRoleId) {
		RoleUserRole.where {
			role == Role.load(roleId) &&
			userRole == UserRole.load(userRoleId)
		}.get()
	}

	static boolean exists(long roleId, long userRoleId) {
		RoleUserRole.where {
			role == Role.load(roleId) &&
			userRole == UserRole.load(userRoleId)
		}.count() > 0
	}

	static RoleUserRole create(Role role, UserRole userRole, boolean flush = false) {
		def instance = new RoleUserRole(role: role, userRole: userRole)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(Role u, UserRole r, boolean flush = false) {
		if (u == null || r == null) return false

		int rowCount = RoleUserRole.where {
			role == Role.load(u.id) &&
			userRole == UserRole.load(r.id)
		}.deleteAll()

		if (flush) { RoleUserRole.withSession { it.flush() } }

		rowCount > 0
	}

	static void removeAll(Role u, boolean flush = false) {
		if (u == null) return

		RoleUserRole.where {
			role == Role.load(u.id)
		}.deleteAll()

		if (flush) { RoleUserRole.withSession { it.flush() } }
	}

	static void removeAll(UserRole r, boolean flush = false) {
		if (r == null) return

		RoleUserRole.where {
			userRole == UserRole.load(r.id)
		}.deleteAll()

		if (flush) { RoleUserRole.withSession { it.flush() } }
	}

	static constraints = {
		userRole validator: { UserRole r, RoleUserRole ur ->
			if (ur.role == null) return
			boolean existing = false
			RoleUserRole.withNewSession {
				existing = RoleUserRole.exists(ur.role.id, r.id)
			}
			if (existing) {
				return 'userRole.exists'
			}
		}
	}

	static mapping = {
		id composite: ['userRole', 'role']
		version false
	}
}
