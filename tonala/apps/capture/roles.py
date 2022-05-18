from rolepermissions.roles import AbstractUserRole

class Capture(AbstractUserRole):
    available_permissions = {
        'create_capture_record': True,
    }
