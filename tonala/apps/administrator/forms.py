from django import forms


class UserLogin(forms.Form):
    username = forms.CharField(max_length=150, required=True)
    password = forms.CharField(max_length = 50, widget=forms.PasswordInput, required=True)
