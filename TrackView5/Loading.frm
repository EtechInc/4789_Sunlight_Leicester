VERSION 5.00
Begin VB.Form Loading_frm 
   BackColor       =   &H00DBD9D4&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Loading"
   ClientHeight    =   14085
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   16950
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   14085
   ScaleWidth      =   16950
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton cmdRelease 
      BackColor       =   &H00DBD9D4&
      Caption         =   "Release"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   14865
      TabIndex        =   425
      Top             =   8280
      Width           =   1215
   End
   Begin VB.TextBox lblWeightPurge 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   315
      Left            =   15015
      TabIndex        =   424
      Text            =   "99.9kg"
      Top             =   7800
      Width           =   915
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00DBD9D4&
      Height          =   13860
      Left            =   120
      TabIndex        =   30
      Top             =   120
      Width           =   13860
      Begin VB.TextBox lblHidden 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   315
         Left            =   -5000
         TabIndex        =   421
         Text            =   "lblCatName"
         Top             =   6525
         Width           =   3090
      End
      Begin VB.PictureBox Picture2 
         BackColor       =   &H00DBD9D4&
         BorderStyle     =   0  'None
         Height          =   13680
         Left            =   120
         ScaleHeight     =   13680
         ScaleWidth      =   13635
         TabIndex        =   31
         Top             =   120
         Width           =   13635
         Begin VB.ComboBox cmbCat 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   6120
            Sorted          =   -1  'True
            Style           =   2  'Dropdown List
            TabIndex        =   32
            Top             =   1440
            Visible         =   0   'False
            Width           =   7500
         End
         Begin VB.ComboBox cmbCus 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   5700
            Sorted          =   -1  'True
            Style           =   2  'Dropdown List
            TabIndex        =   33
            Top             =   3540
            Visible         =   0   'False
            Width           =   7500
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   0
            Left            =   0
            TabIndex        =   423
            Top             =   0
            Width           =   1290
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   0
            Left            =   1350
            TabIndex        =   422
            Top             =   0
            Width           =   240
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   40
            Left            =   3930
            TabIndex        =   373
            Text            =   "999999"
            Top             =   7860
            Width           =   915
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   40
            Left            =   9630
            TabIndex        =   372
            Top             =   7935
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   39
            Left            =   9630
            TabIndex        =   371
            Top             =   8235
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   38
            Left            =   9630
            TabIndex        =   370
            Top             =   8535
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   37
            Left            =   9630
            TabIndex        =   369
            Top             =   8835
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   36
            Left            =   9630
            TabIndex        =   368
            Top             =   9135
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   35
            Left            =   9630
            TabIndex        =   367
            Top             =   9435
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   34
            Left            =   9630
            TabIndex        =   366
            Top             =   9735
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   33
            Left            =   9630
            TabIndex        =   365
            Top             =   10035
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   32
            Left            =   9630
            TabIndex        =   364
            Top             =   10335
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   31
            Left            =   9630
            TabIndex        =   363
            Top             =   10635
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   30
            Left            =   9630
            TabIndex        =   362
            Top             =   10935
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   29
            Left            =   9630
            TabIndex        =   361
            Top             =   11235
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   28
            Left            =   9630
            TabIndex        =   360
            Top             =   11655
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   27
            Left            =   9630
            TabIndex        =   359
            Top             =   11955
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   26
            Left            =   9630
            TabIndex        =   358
            Top             =   12255
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   25
            Left            =   9630
            TabIndex        =   357
            Top             =   12555
            Width           =   1290
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   40
            Left            =   7305
            TabIndex        =   356
            Text            =   "Empty"
            Top             =   7860
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   40
            Left            =   8655
            TabIndex        =   355
            Text            =   "99.9kg"
            Top             =   7860
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   39
            Left            =   7305
            TabIndex        =   354
            Text            =   "Empty"
            Top             =   8160
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   39
            Left            =   8655
            TabIndex        =   353
            Text            =   "99.9kg"
            Top             =   8160
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   38
            Left            =   7305
            TabIndex        =   352
            Text            =   "Empty"
            Top             =   8460
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   38
            Left            =   8655
            TabIndex        =   351
            Text            =   "99.9kg"
            Top             =   8460
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   37
            Left            =   7305
            TabIndex        =   350
            Text            =   "Empty"
            Top             =   8760
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   37
            Left            =   8655
            TabIndex        =   349
            Text            =   "99.9kg"
            Top             =   8760
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   36
            Left            =   7305
            TabIndex        =   348
            Text            =   "Empty"
            Top             =   9060
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   36
            Left            =   8655
            TabIndex        =   347
            Text            =   "99.9kg"
            Top             =   9060
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   35
            Left            =   7305
            TabIndex        =   346
            Text            =   "Empty"
            Top             =   9360
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   35
            Left            =   8655
            TabIndex        =   345
            Text            =   "99.9kg"
            Top             =   9360
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   34
            Left            =   7305
            TabIndex        =   344
            Text            =   "Empty"
            Top             =   9660
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   34
            Left            =   8655
            TabIndex        =   343
            Text            =   "99.9kg"
            Top             =   9660
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   33
            Left            =   7305
            TabIndex        =   342
            Text            =   "Empty"
            Top             =   9960
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   33
            Left            =   8655
            TabIndex        =   341
            Text            =   "99.9kg"
            Top             =   9960
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   32
            Left            =   7305
            TabIndex        =   340
            Text            =   "Empty"
            Top             =   10260
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   32
            Left            =   8655
            TabIndex        =   339
            Text            =   "99.9kg"
            Top             =   10260
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   31
            Left            =   7305
            TabIndex        =   338
            Text            =   "Empty"
            Top             =   10560
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   31
            Left            =   8655
            TabIndex        =   337
            Text            =   "99.9kg"
            Top             =   10560
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   30
            Left            =   7305
            TabIndex        =   336
            Text            =   "Empty"
            Top             =   10860
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   30
            Left            =   8655
            TabIndex        =   335
            Text            =   "99.9kg"
            Top             =   10860
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   29
            Left            =   7305
            TabIndex        =   334
            Text            =   "Empty"
            Top             =   11160
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   29
            Left            =   8655
            TabIndex        =   333
            Text            =   "99.9kg"
            Top             =   11160
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   28
            Left            =   7305
            TabIndex        =   332
            Text            =   "Empty"
            Top             =   11580
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   28
            Left            =   8655
            TabIndex        =   331
            Text            =   "99.9kg"
            Top             =   11580
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   27
            Left            =   7305
            TabIndex        =   330
            Text            =   "Empty"
            Top             =   11880
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   27
            Left            =   8655
            TabIndex        =   329
            Text            =   "99.9kg"
            Top             =   11880
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   26
            Left            =   7305
            TabIndex        =   328
            Text            =   "Empty"
            Top             =   12180
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   26
            Left            =   8655
            TabIndex        =   327
            Text            =   "99.9kg"
            Top             =   12180
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   25
            Left            =   7305
            TabIndex        =   326
            Text            =   "Empty"
            Top             =   12480
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   25
            Left            =   8655
            TabIndex        =   325
            Text            =   "99.9kg"
            Top             =   12480
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   39
            Left            =   3930
            TabIndex        =   324
            Text            =   "9999"
            Top             =   8160
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   38
            Left            =   3930
            TabIndex        =   323
            Text            =   "9999"
            Top             =   8460
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   37
            Left            =   3930
            TabIndex        =   322
            Text            =   "9999"
            Top             =   8760
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   36
            Left            =   3930
            TabIndex        =   321
            Text            =   "9999"
            Top             =   9060
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   35
            Left            =   3930
            TabIndex        =   320
            Text            =   "9999"
            Top             =   9360
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   34
            Left            =   3930
            TabIndex        =   319
            Text            =   "9999"
            Top             =   9660
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   33
            Left            =   3930
            TabIndex        =   318
            Text            =   "9999"
            Top             =   9960
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   32
            Left            =   3930
            TabIndex        =   317
            Text            =   "9999"
            Top             =   10260
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   31
            Left            =   3930
            TabIndex        =   316
            Text            =   "9999"
            Top             =   10560
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   30
            Left            =   3930
            TabIndex        =   315
            Text            =   "9999"
            Top             =   10860
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   29
            Left            =   3930
            TabIndex        =   314
            Text            =   "9999"
            Top             =   11160
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   28
            Left            =   3930
            TabIndex        =   313
            Text            =   "9999"
            Top             =   11580
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   27
            Left            =   3930
            TabIndex        =   312
            Text            =   "9999"
            Top             =   11880
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   26
            Left            =   3930
            TabIndex        =   311
            Text            =   "9999"
            Top             =   12180
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   25
            Left            =   3930
            TabIndex        =   310
            Text            =   "9999"
            Top             =   12480
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   40
            Left            =   540
            TabIndex        =   309
            Text            =   "99"
            Top             =   7860
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   39
            Left            =   555
            TabIndex        =   308
            Text            =   "999"
            Top             =   8160
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   38
            Left            =   555
            TabIndex        =   307
            Text            =   "999"
            Top             =   8460
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   37
            Left            =   555
            TabIndex        =   306
            Text            =   "999"
            Top             =   8760
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   36
            Left            =   555
            TabIndex        =   305
            Text            =   "999"
            Top             =   9060
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   35
            Left            =   555
            TabIndex        =   304
            Text            =   "999"
            Top             =   9360
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   34
            Left            =   555
            TabIndex        =   303
            Text            =   "999"
            Top             =   9660
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   33
            Left            =   555
            TabIndex        =   302
            Text            =   "999"
            Top             =   9960
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   32
            Left            =   555
            TabIndex        =   301
            Text            =   "999"
            Top             =   10260
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   31
            Left            =   555
            TabIndex        =   300
            Text            =   "999"
            Top             =   10560
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   30
            Left            =   555
            TabIndex        =   299
            Text            =   "999"
            Top             =   10860
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   29
            Left            =   555
            TabIndex        =   298
            Text            =   "999"
            Top             =   11160
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   28
            Left            =   555
            TabIndex        =   297
            Text            =   "999"
            Top             =   11580
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   27
            Left            =   555
            TabIndex        =   296
            Text            =   "999"
            Top             =   11880
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   26
            Left            =   555
            TabIndex        =   295
            Text            =   "999"
            Top             =   12180
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   25
            Left            =   555
            TabIndex        =   294
            Text            =   "999"
            Top             =   12480
            Width           =   915
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   40
            Left            =   1455
            TabIndex        =   293
            Text            =   "lblCatName"
            Top             =   7875
            Width           =   3500
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   39
            Left            =   1455
            TabIndex        =   292
            Text            =   "lblCatName"
            Top             =   8160
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   38
            Left            =   1455
            TabIndex        =   291
            Text            =   "lblCatName"
            Top             =   8460
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   37
            Left            =   1455
            TabIndex        =   290
            Text            =   "lblCatName"
            Top             =   8760
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   36
            Left            =   1455
            TabIndex        =   289
            Text            =   "lblCatName"
            Top             =   9060
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   35
            Left            =   1455
            TabIndex        =   288
            Text            =   "lblCatName"
            Top             =   9360
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   34
            Left            =   1455
            TabIndex        =   287
            Text            =   "lblCatName"
            Top             =   9660
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   33
            Left            =   1455
            TabIndex        =   286
            Text            =   "lblCatName"
            Top             =   9960
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   32
            Left            =   1455
            TabIndex        =   285
            Text            =   "lblCatName"
            Top             =   10260
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   31
            Left            =   1455
            TabIndex        =   284
            Text            =   "lblCatName"
            Top             =   10560
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   30
            Left            =   1455
            TabIndex        =   283
            Text            =   "lblCatName"
            Top             =   10860
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   29
            Left            =   1455
            TabIndex        =   282
            Text            =   "lblCatName"
            Top             =   11160
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   28
            Left            =   1455
            TabIndex        =   281
            Text            =   "lblCatName"
            Top             =   11580
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   40
            Left            =   4860
            TabIndex        =   280
            Text            =   "lblCusName"
            Top             =   7860
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   39
            Left            =   4830
            TabIndex        =   279
            Text            =   "lblCusName"
            Top             =   8160
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   38
            Left            =   4830
            TabIndex        =   278
            Text            =   "lblCusName"
            Top             =   8460
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   37
            Left            =   4860
            TabIndex        =   277
            Text            =   "lblCusName"
            Top             =   8775
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   36
            Left            =   4830
            TabIndex        =   276
            Text            =   "lblCusName"
            Top             =   9060
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   35
            Left            =   4830
            TabIndex        =   275
            Text            =   "lblCusName"
            Top             =   9360
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   34
            Left            =   4830
            TabIndex        =   274
            Text            =   "lblCusName"
            Top             =   9660
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   33
            Left            =   4830
            TabIndex        =   273
            Text            =   "lblCusName"
            Top             =   9960
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   32
            Left            =   4830
            TabIndex        =   272
            Text            =   "lblCusName"
            Top             =   10260
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   31
            Left            =   4830
            TabIndex        =   271
            Text            =   "lblCusName"
            Top             =   10560
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   30
            Left            =   4830
            TabIndex        =   270
            Text            =   "lblCusName"
            Top             =   10860
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   29
            Left            =   4830
            TabIndex        =   269
            Text            =   "lblCusName"
            Top             =   11160
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   28
            Left            =   4830
            TabIndex        =   268
            Text            =   "lblCusName"
            Top             =   11580
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   27
            Left            =   4830
            TabIndex        =   267
            Text            =   "lblCusName"
            Top             =   11880
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   26
            Left            =   4830
            TabIndex        =   266
            Text            =   "lblCusName"
            Top             =   12180
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   25
            Left            =   4830
            TabIndex        =   265
            Text            =   "lblCusName"
            Top             =   12480
            Width           =   2415
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   40
            Left            =   10980
            TabIndex        =   264
            Top             =   12555
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   39
            Left            =   10980
            TabIndex        =   263
            Top             =   12255
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   38
            Left            =   10980
            TabIndex        =   262
            Top             =   11955
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   37
            Left            =   10980
            TabIndex        =   261
            Top             =   11655
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   36
            Left            =   10980
            TabIndex        =   260
            Top             =   11235
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   35
            Left            =   10980
            TabIndex        =   259
            Top             =   10935
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   34
            Left            =   10980
            TabIndex        =   258
            Top             =   10635
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   33
            Left            =   10980
            TabIndex        =   257
            Top             =   10335
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   32
            Left            =   10980
            TabIndex        =   256
            Top             =   10035
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   31
            Left            =   10980
            TabIndex        =   255
            Top             =   9735
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   30
            Left            =   10980
            TabIndex        =   254
            Top             =   9435
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   29
            Left            =   10980
            TabIndex        =   253
            Top             =   9135
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   28
            Left            =   10980
            TabIndex        =   252
            Top             =   8835
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   27
            Left            =   10980
            TabIndex        =   251
            Top             =   8535
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   26
            Left            =   10980
            TabIndex        =   250
            Top             =   8235
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   25
            Left            =   10980
            TabIndex        =   249
            Top             =   7935
            Width           =   240
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   26
            Left            =   1455
            TabIndex        =   248
            Text            =   "lblCatName"
            Top             =   12480
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   25
            Left            =   1455
            TabIndex        =   247
            Text            =   "lblCatName"
            Top             =   12180
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   27
            Left            =   1455
            TabIndex        =   246
            Text            =   "lblCatName"
            Top             =   11880
            Width           =   2415
         End
         Begin VB.CommandButton cmdAllCat 
            BackColor       =   &H00DBD9D4&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Left            =   540
            TabIndex        =   245
            Top             =   120
            Width           =   315
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   14
            Left            =   1395
            TabIndex        =   244
            Text            =   "lblCatName"
            Top             =   4485
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   15
            Left            =   1395
            TabIndex        =   243
            Text            =   "lblCatName"
            Top             =   4785
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   16
            Left            =   1395
            TabIndex        =   242
            Text            =   "lblCatName"
            Top             =   5085
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   17
            Left            =   1395
            TabIndex        =   241
            Text            =   "lblCatName"
            Top             =   5400
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   18
            Left            =   1395
            TabIndex        =   240
            Text            =   "lblCatName"
            Top             =   5700
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   19
            Left            =   1395
            TabIndex        =   239
            Text            =   "lblCatName"
            Top             =   6000
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   20
            Left            =   1395
            TabIndex        =   238
            Text            =   "lblCatName"
            Top             =   6300
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   21
            Left            =   1395
            TabIndex        =   237
            Text            =   "lblCatName"
            Top             =   6600
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   23
            Left            =   1395
            TabIndex        =   236
            Text            =   "lblCatName"
            Top             =   7200
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   24
            Left            =   1395
            TabIndex        =   235
            Text            =   "lblCatName"
            Top             =   7500
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   22
            Left            =   1395
            TabIndex        =   234
            Text            =   "lblCatName"
            Top             =   6900
            Width           =   2415
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   24
            Left            =   10920
            TabIndex        =   233
            Top             =   7575
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   23
            Left            =   10920
            TabIndex        =   232
            Top             =   7275
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   22
            Left            =   10920
            TabIndex        =   231
            Top             =   6975
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   21
            Left            =   10920
            TabIndex        =   230
            Top             =   6675
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   20
            Left            =   10920
            TabIndex        =   229
            Top             =   6375
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   19
            Left            =   10920
            TabIndex        =   228
            Top             =   6075
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   18
            Left            =   10920
            TabIndex        =   227
            Top             =   5775
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   17
            Left            =   10920
            TabIndex        =   226
            Top             =   5475
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   1
            Left            =   10920
            TabIndex        =   225
            Top             =   540
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   2
            Left            =   10920
            TabIndex        =   224
            Top             =   840
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   3
            Left            =   10920
            TabIndex        =   223
            Top             =   1140
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   4
            Left            =   10920
            TabIndex        =   222
            Top             =   1440
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   5
            Left            =   10920
            TabIndex        =   221
            Top             =   1740
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   6
            Left            =   10920
            TabIndex        =   220
            Top             =   2040
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   7
            Left            =   10920
            TabIndex        =   219
            Top             =   2340
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   8
            Left            =   10920
            TabIndex        =   218
            Top             =   2640
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   9
            Left            =   10920
            TabIndex        =   217
            Top             =   2940
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   10
            Left            =   10920
            TabIndex        =   216
            Top             =   3240
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   11
            Left            =   10920
            TabIndex        =   215
            Top             =   3540
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   12
            Left            =   10920
            TabIndex        =   214
            Top             =   3840
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   13
            Left            =   10920
            TabIndex        =   213
            Top             =   4260
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   14
            Left            =   10920
            TabIndex        =   212
            Top             =   4560
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   15
            Left            =   10920
            TabIndex        =   211
            Top             =   4860
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   16
            Left            =   10920
            TabIndex        =   210
            Top             =   5160
            Width           =   240
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   24
            Left            =   9570
            TabIndex        =   209
            Top             =   7575
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   23
            Left            =   9570
            TabIndex        =   208
            Top             =   7275
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   22
            Left            =   9570
            TabIndex        =   207
            Top             =   6975
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   21
            Left            =   9570
            TabIndex        =   206
            Top             =   6675
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   20
            Left            =   9570
            TabIndex        =   205
            Top             =   6375
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   19
            Left            =   9570
            TabIndex        =   204
            Top             =   6075
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   18
            Left            =   9570
            TabIndex        =   203
            Top             =   5775
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   17
            Left            =   9570
            TabIndex        =   202
            Top             =   5475
            Width           =   1290
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   24
            Left            =   7245
            TabIndex        =   201
            Text            =   "Empty"
            Top             =   7500
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   24
            Left            =   8595
            TabIndex        =   200
            Text            =   "99.9kg"
            Top             =   7500
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   23
            Left            =   7260
            TabIndex        =   199
            Text            =   "Empty"
            Top             =   7200
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   23
            Left            =   8595
            TabIndex        =   198
            Text            =   "99.9kg"
            Top             =   7200
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   22
            Left            =   7245
            TabIndex        =   197
            Text            =   "Empty"
            Top             =   6900
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   22
            Left            =   8595
            TabIndex        =   196
            Text            =   "99.9kg"
            Top             =   6900
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   21
            Left            =   7245
            TabIndex        =   195
            Text            =   "Empty"
            Top             =   6600
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   21
            Left            =   8595
            TabIndex        =   194
            Text            =   "99.9kg"
            Top             =   6600
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   20
            Left            =   7245
            TabIndex        =   193
            Text            =   "Empty"
            Top             =   6300
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   20
            Left            =   8595
            TabIndex        =   192
            Text            =   "99.9kg"
            Top             =   6300
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   19
            Left            =   7245
            TabIndex        =   191
            Text            =   "Empty"
            Top             =   6000
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   19
            Left            =   8595
            TabIndex        =   190
            Text            =   "99.9kg"
            Top             =   6000
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   18
            Left            =   7245
            TabIndex        =   189
            Text            =   "Empty"
            Top             =   5700
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   18
            Left            =   8595
            TabIndex        =   188
            Text            =   "99.9kg"
            Top             =   5700
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   17
            Left            =   7245
            TabIndex        =   187
            Text            =   "Empty"
            Top             =   5400
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   17
            Left            =   8595
            TabIndex        =   186
            Text            =   "99.9kg"
            Top             =   5400
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   24
            Left            =   3870
            TabIndex        =   185
            Text            =   "9999"
            Top             =   7500
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   23
            Left            =   3870
            TabIndex        =   184
            Text            =   "9999"
            Top             =   7200
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   22
            Left            =   3870
            TabIndex        =   183
            Text            =   "9999"
            Top             =   6900
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   21
            Left            =   3870
            TabIndex        =   182
            Text            =   "9999"
            Top             =   6600
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   20
            Left            =   3870
            TabIndex        =   181
            Text            =   "9999"
            Top             =   6300
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   19
            Left            =   3870
            TabIndex        =   180
            Text            =   "9999"
            Top             =   6000
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   18
            Left            =   3870
            TabIndex        =   179
            Text            =   "9999"
            Top             =   5700
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   17
            Left            =   3870
            TabIndex        =   178
            Text            =   "9999"
            Top             =   5400
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   24
            Left            =   495
            TabIndex        =   177
            Text            =   "999"
            Top             =   7500
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   23
            Left            =   495
            TabIndex        =   176
            Text            =   "999"
            Top             =   7200
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   22
            Left            =   495
            TabIndex        =   175
            Text            =   "999"
            Top             =   6900
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   21
            Left            =   495
            TabIndex        =   174
            Text            =   "999"
            Top             =   6600
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   20
            Left            =   495
            TabIndex        =   173
            Text            =   "999"
            Top             =   6300
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   19
            Left            =   495
            TabIndex        =   172
            Text            =   "999"
            Top             =   6000
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   18
            Left            =   495
            TabIndex        =   171
            Text            =   "999"
            Top             =   5700
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   17
            Left            =   495
            TabIndex        =   170
            Text            =   "999"
            Top             =   5400
            Width           =   915
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   24
            Left            =   4770
            TabIndex        =   169
            Text            =   "lblCusName"
            Top             =   7500
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   23
            Left            =   4770
            TabIndex        =   168
            Text            =   "lblCusName"
            Top             =   7200
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   22
            Left            =   4770
            TabIndex        =   167
            Text            =   "lblCusName"
            Top             =   6900
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   21
            Left            =   4770
            TabIndex        =   166
            Text            =   "lblCusName"
            Top             =   6600
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   20
            Left            =   4770
            TabIndex        =   165
            Text            =   "lblCusName"
            Top             =   6300
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   19
            Left            =   4770
            TabIndex        =   164
            Text            =   "lblCusName"
            Top             =   6000
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   18
            Left            =   4770
            TabIndex        =   163
            Text            =   "lblCusName"
            Top             =   5700
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   17
            Left            =   4770
            TabIndex        =   162
            Text            =   "lblCusName"
            Top             =   5400
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   16
            Left            =   4770
            TabIndex        =   161
            Text            =   "lblCusName"
            Top             =   5085
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   15
            Left            =   4770
            TabIndex        =   160
            Text            =   "lblCusName"
            Top             =   4785
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   14
            Left            =   4770
            TabIndex        =   159
            Text            =   "lblCusName"
            Top             =   4485
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   13
            Left            =   4770
            TabIndex        =   158
            Text            =   "lblCusName"
            Top             =   4185
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   12
            Left            =   4770
            TabIndex        =   157
            Text            =   "lblCusName"
            Top             =   3765
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   11
            Left            =   4770
            TabIndex        =   156
            Text            =   "lblCusName"
            Top             =   3465
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   10
            Left            =   4770
            TabIndex        =   155
            Text            =   "lblCusName"
            Top             =   3165
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   9
            Left            =   4770
            TabIndex        =   154
            Text            =   "lblCusName"
            Top             =   2865
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   8
            Left            =   4770
            TabIndex        =   153
            Text            =   "lblCusName"
            Top             =   2565
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   7
            Left            =   4770
            TabIndex        =   152
            Text            =   "lblCusName"
            Top             =   2265
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   6
            Left            =   4770
            TabIndex        =   151
            Text            =   "lblCusName"
            Top             =   1965
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   5
            Left            =   4770
            TabIndex        =   150
            Text            =   "lblCusName"
            Top             =   1665
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   4
            Left            =   4800
            TabIndex        =   149
            Text            =   "lblCusName"
            Top             =   1380
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   3
            Left            =   4770
            TabIndex        =   148
            Text            =   "lblCusName"
            Top             =   1065
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   2
            Left            =   4770
            TabIndex        =   147
            Text            =   "lblCusName"
            Top             =   765
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   1
            Left            =   4800
            TabIndex        =   146
            Text            =   "lblCusName"
            Top             =   465
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   13
            Left            =   1395
            TabIndex        =   145
            Text            =   "lblCatName"
            Top             =   4185
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   12
            Left            =   1395
            TabIndex        =   144
            Text            =   "lblCatName"
            Top             =   3765
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   11
            Left            =   1395
            TabIndex        =   143
            Text            =   "lblCatName"
            Top             =   3465
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   10
            Left            =   1395
            TabIndex        =   142
            Text            =   "lblCatName"
            Top             =   3165
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   9
            Left            =   1395
            TabIndex        =   141
            Text            =   "lblCatName"
            Top             =   2865
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   8
            Left            =   1395
            TabIndex        =   140
            Text            =   "lblCatName"
            Top             =   2565
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   7
            Left            =   1395
            TabIndex        =   139
            Text            =   "lblCatName"
            Top             =   2265
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   6
            Left            =   1395
            TabIndex        =   138
            Text            =   "lblCatName"
            Top             =   1965
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   5
            Left            =   1395
            TabIndex        =   137
            Text            =   "lblCatName"
            Top             =   1665
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   4
            Left            =   1395
            TabIndex        =   136
            Text            =   "lblCatName"
            Top             =   1365
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   3
            Left            =   1395
            TabIndex        =   135
            Text            =   "lblCatName"
            Top             =   1065
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   2
            Left            =   1395
            TabIndex        =   134
            Text            =   "lblCatName"
            Top             =   765
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   1
            Left            =   1395
            TabIndex        =   133
            Text            =   "lblCatName"
            Top             =   480
            Width           =   3500
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   16
            Left            =   495
            TabIndex        =   132
            Text            =   "999"
            Top             =   5085
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   15
            Left            =   495
            TabIndex        =   131
            Text            =   "999"
            Top             =   4785
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   14
            Left            =   495
            TabIndex        =   130
            Text            =   "999"
            Top             =   4485
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   13
            Left            =   495
            TabIndex        =   129
            Text            =   "999"
            Top             =   4185
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   12
            Left            =   495
            TabIndex        =   128
            Text            =   "999"
            Top             =   3765
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   11
            Left            =   495
            TabIndex        =   127
            Text            =   "999"
            Top             =   3465
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   10
            Left            =   495
            TabIndex        =   126
            Text            =   "999"
            Top             =   3165
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   9
            Left            =   495
            TabIndex        =   125
            Text            =   "999"
            Top             =   2865
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   8
            Left            =   495
            TabIndex        =   124
            Text            =   "999"
            Top             =   2565
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   7
            Left            =   495
            TabIndex        =   123
            Text            =   "999"
            Top             =   2265
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   6
            Left            =   495
            TabIndex        =   122
            Text            =   "999"
            Top             =   1965
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   5
            Left            =   495
            TabIndex        =   121
            Text            =   "999"
            Top             =   1665
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   4
            Left            =   495
            TabIndex        =   120
            Text            =   "999"
            Top             =   1365
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   3
            Left            =   495
            TabIndex        =   119
            Text            =   "999"
            Top             =   1065
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   2
            Left            =   495
            TabIndex        =   118
            Text            =   "999"
            Top             =   765
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   1
            Left            =   480
            TabIndex        =   117
            Text            =   "99"
            Top             =   465
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   16
            Left            =   3870
            TabIndex        =   116
            Text            =   "9999"
            Top             =   5085
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   15
            Left            =   3870
            TabIndex        =   115
            Text            =   "9999"
            Top             =   4785
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   14
            Left            =   3870
            TabIndex        =   114
            Text            =   "9999"
            Top             =   4485
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   13
            Left            =   3870
            TabIndex        =   113
            Text            =   "9999"
            Top             =   4185
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   12
            Left            =   3870
            TabIndex        =   112
            Text            =   "9999"
            Top             =   3765
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   11
            Left            =   3870
            TabIndex        =   111
            Text            =   "9999"
            Top             =   3465
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   10
            Left            =   3870
            TabIndex        =   110
            Text            =   "9999"
            Top             =   3165
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   9
            Left            =   3870
            TabIndex        =   109
            Text            =   "9999"
            Top             =   2865
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   8
            Left            =   3870
            TabIndex        =   108
            Text            =   "9999"
            Top             =   2565
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   7
            Left            =   3870
            TabIndex        =   107
            Text            =   "9999"
            Top             =   2265
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   6
            Left            =   3870
            TabIndex        =   106
            Text            =   "9999"
            Top             =   1965
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   5
            Left            =   3870
            TabIndex        =   105
            Text            =   "9999"
            Top             =   1665
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   4
            Left            =   3870
            TabIndex        =   104
            Text            =   "9999"
            Top             =   1365
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   3
            Left            =   3870
            TabIndex        =   103
            Text            =   "9999"
            Top             =   1065
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   2
            Left            =   3870
            TabIndex        =   102
            Text            =   "9999"
            Top             =   765
            Width           =   915
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   16
            Left            =   8595
            TabIndex        =   101
            Text            =   "99.9kg"
            Top             =   5085
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   16
            Left            =   7245
            TabIndex        =   100
            Text            =   "Empty"
            Top             =   5085
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   15
            Left            =   8595
            TabIndex        =   99
            Text            =   "99.9kg"
            Top             =   4785
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   15
            Left            =   7245
            TabIndex        =   98
            Text            =   "Empty"
            Top             =   4785
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   14
            Left            =   8595
            TabIndex        =   97
            Text            =   "99.9kg"
            Top             =   4485
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   14
            Left            =   7245
            TabIndex        =   96
            Text            =   "Empty"
            Top             =   4485
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   13
            Left            =   8595
            TabIndex        =   95
            Text            =   "99.9kg"
            Top             =   4185
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   13
            Left            =   7245
            TabIndex        =   94
            Text            =   "Empty"
            Top             =   4185
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   12
            Left            =   8595
            TabIndex        =   93
            Text            =   "99.9kg"
            Top             =   3765
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   12
            Left            =   7245
            TabIndex        =   92
            Text            =   "Empty"
            Top             =   3765
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   11
            Left            =   8595
            TabIndex        =   91
            Text            =   "99.9kg"
            Top             =   3465
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   11
            Left            =   7245
            TabIndex        =   90
            Text            =   "Empty"
            Top             =   3465
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   10
            Left            =   8595
            TabIndex        =   89
            Text            =   "99.9kg"
            Top             =   3165
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   10
            Left            =   7245
            TabIndex        =   88
            Text            =   "Empty"
            Top             =   3165
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   9
            Left            =   8595
            TabIndex        =   87
            Text            =   "99.9kg"
            Top             =   2865
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   9
            Left            =   7245
            TabIndex        =   86
            Text            =   "Empty"
            Top             =   2865
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   8
            Left            =   8595
            TabIndex        =   85
            Text            =   "99.9kg"
            Top             =   2565
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   8
            Left            =   7245
            TabIndex        =   84
            Text            =   "Empty"
            Top             =   2565
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   7
            Left            =   8595
            TabIndex        =   83
            Text            =   "99.9kg"
            Top             =   2265
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   7
            Left            =   7245
            TabIndex        =   82
            Text            =   "Empty"
            Top             =   2265
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   6
            Left            =   8595
            TabIndex        =   81
            Text            =   "99.9kg"
            Top             =   1965
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   6
            Left            =   7245
            TabIndex        =   80
            Text            =   "Empty"
            Top             =   1965
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   5
            Left            =   8595
            TabIndex        =   79
            Text            =   "99.9kg"
            Top             =   1665
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   5
            Left            =   7245
            TabIndex        =   78
            Text            =   "Empty"
            Top             =   1665
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   4
            Left            =   8595
            TabIndex        =   77
            Text            =   "99.9kg"
            Top             =   1365
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   4
            Left            =   7245
            TabIndex        =   76
            Text            =   "Empty"
            Top             =   1365
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   3
            Left            =   8595
            TabIndex        =   75
            Text            =   "99.9kg"
            Top             =   1065
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   3
            Left            =   7245
            TabIndex        =   74
            Text            =   "Empty"
            Top             =   1065
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   2
            Left            =   8595
            TabIndex        =   73
            Text            =   "99.9kg"
            Top             =   765
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   2
            Left            =   7245
            TabIndex        =   72
            Text            =   "Empty"
            Top             =   765
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   1
            Left            =   8595
            TabIndex        =   71
            Text            =   "99.9kg"
            Top             =   465
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   1
            Left            =   7245
            TabIndex        =   70
            Text            =   "Empty"
            Top             =   465
            Width           =   1365
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   16
            Left            =   9570
            TabIndex        =   69
            Top             =   5160
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   15
            Left            =   9570
            TabIndex        =   68
            Top             =   4860
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   14
            Left            =   9570
            TabIndex        =   67
            Top             =   4560
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   13
            Left            =   9570
            TabIndex        =   66
            Top             =   4260
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   12
            Left            =   9570
            TabIndex        =   65
            Top             =   3840
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   11
            Left            =   9570
            TabIndex        =   64
            Top             =   3540
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   10
            Left            =   9570
            TabIndex        =   63
            Top             =   3240
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   9
            Left            =   9570
            TabIndex        =   62
            Top             =   2940
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   8
            Left            =   9570
            TabIndex        =   61
            Top             =   2640
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   7
            Left            =   9570
            TabIndex        =   60
            Top             =   2340
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   6
            Left            =   9570
            TabIndex        =   59
            Top             =   2040
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   5
            Left            =   9570
            TabIndex        =   58
            Top             =   1740
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   4
            Left            =   9570
            TabIndex        =   57
            Top             =   1440
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   3
            Left            =   9570
            TabIndex        =   56
            Top             =   1140
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   2
            Left            =   9570
            TabIndex        =   55
            Top             =   840
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   1
            Left            =   9570
            TabIndex        =   54
            Top             =   540
            Width           =   1290
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   1
            Left            =   3870
            TabIndex        =   53
            Text            =   "999999"
            Top             =   465
            Width           =   915
         End
         Begin VB.TextBox lblDeliveryColour 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   315
            Left            =   12240
            TabIndex        =   52
            Top             =   120
            Width           =   1065
         End
         Begin VB.Timer tmr_Update 
            Interval        =   500
            Left            =   13140
            Top             =   1380
         End
         Begin VB.TextBox txtDeliveryDay 
            Alignment       =   2  'Center
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   12180
            TabIndex        =   51
            Text            =   "99"
            Top             =   540
            Width           =   1140
         End
         Begin VB.CommandButton cmdAll 
            BackColor       =   &H00DBD9D4&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Left            =   4965
            TabIndex        =   50
            Top             =   30
            Width           =   315
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   41
            Left            =   9630
            TabIndex        =   49
            Top             =   12915
            Width           =   1290
         End
         Begin VB.CheckBox chkRelease 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00DBD9D4&
            Caption         =   "Release"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   290
            Index           =   42
            Left            =   9630
            TabIndex        =   48
            Top             =   13215
            Width           =   1290
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   41
            Left            =   7305
            TabIndex        =   47
            Text            =   "Empty"
            Top             =   12840
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   41
            Left            =   8655
            TabIndex        =   46
            Text            =   "99.9kg"
            Top             =   12840
            Width           =   915
         End
         Begin VB.TextBox lblProgress 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   42
            Left            =   7305
            TabIndex        =   45
            Text            =   "Empty"
            Top             =   13140
            Width           =   1365
         End
         Begin VB.TextBox lblWeight 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   42
            Left            =   8655
            TabIndex        =   44
            Text            =   "99.9kg"
            Top             =   13140
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   41
            Left            =   3930
            TabIndex        =   43
            Text            =   "9999"
            Top             =   12840
            Width           =   915
         End
         Begin VB.TextBox txtCus 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   42
            Left            =   3930
            TabIndex        =   42
            Text            =   "9999"
            Top             =   13140
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   41
            Left            =   555
            TabIndex        =   41
            Text            =   "999"
            Top             =   12840
            Width           =   915
         End
         Begin VB.TextBox txtCat 
            Alignment       =   2  'Center
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   42
            Left            =   555
            TabIndex        =   40
            Text            =   "999"
            Top             =   13140
            Width           =   915
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   41
            Left            =   4830
            TabIndex        =   39
            Text            =   "lblCusName"
            Top             =   12840
            Width           =   2415
         End
         Begin VB.TextBox lblCusName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   42
            Left            =   4830
            TabIndex        =   38
            Text            =   "lblCusName"
            Top             =   13140
            Width           =   2415
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   41
            Left            =   10980
            TabIndex        =   37
            Top             =   13215
            Width           =   240
         End
         Begin VB.CheckBox chkPurge 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Check1"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   290
            Index           =   42
            Left            =   10980
            TabIndex        =   36
            Top             =   12915
            Width           =   240
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   41
            Left            =   1455
            TabIndex        =   35
            Text            =   "lblCatName"
            Top             =   13140
            Width           =   2415
         End
         Begin VB.TextBox lblCatName 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   42
            Left            =   1455
            TabIndex        =   34
            Text            =   "lblCatName"
            Top             =   12840
            Width           =   2415
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   40
            Left            =   180
            TabIndex        =   420
            Top             =   10035
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   39
            Left            =   180
            TabIndex        =   419
            Top             =   9735
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   38
            Left            =   180
            TabIndex        =   418
            Top             =   9435
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   37
            Left            =   180
            TabIndex        =   417
            Top             =   9135
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   36
            Left            =   180
            TabIndex        =   416
            Top             =   8835
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   35
            Left            =   180
            TabIndex        =   415
            Top             =   8535
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   34
            Left            =   180
            TabIndex        =   414
            Top             =   8235
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   33
            Left            =   180
            TabIndex        =   413
            Top             =   7890
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   32
            Left            =   180
            TabIndex        =   412
            Top             =   10335
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   31
            Left            =   180
            TabIndex        =   411
            Top             =   10635
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   30
            Left            =   180
            TabIndex        =   410
            Top             =   10935
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   29
            Left            =   180
            TabIndex        =   409
            Top             =   11235
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   28
            Left            =   180
            TabIndex        =   408
            Top             =   11655
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   27
            Left            =   180
            TabIndex        =   407
            Top             =   11955
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   26
            Left            =   180
            TabIndex        =   406
            Top             =   12255
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   25
            Left            =   180
            TabIndex        =   405
            Top             =   12555
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   24
            Left            =   120
            TabIndex        =   404
            Top             =   7575
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   23
            Left            =   120
            TabIndex        =   403
            Top             =   7260
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   22
            Left            =   120
            TabIndex        =   402
            Top             =   6975
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   21
            Left            =   120
            TabIndex        =   401
            Top             =   6675
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   20
            Left            =   120
            TabIndex        =   400
            Top             =   6375
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   19
            Left            =   120
            TabIndex        =   399
            Top             =   6075
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   18
            Left            =   120
            TabIndex        =   398
            Top             =   5775
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   17
            Left            =   120
            TabIndex        =   397
            Top             =   5475
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   16
            Left            =   120
            TabIndex        =   396
            Top             =   5160
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   15
            Left            =   120
            TabIndex        =   395
            Top             =   4860
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   14
            Left            =   120
            TabIndex        =   394
            Top             =   4560
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   13
            Left            =   120
            TabIndex        =   393
            Top             =   4260
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   12
            Left            =   120
            TabIndex        =   392
            Top             =   3840
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   11
            Left            =   120
            TabIndex        =   391
            Top             =   3540
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   10
            Left            =   120
            TabIndex        =   390
            Top             =   3240
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   9
            Left            =   120
            TabIndex        =   389
            Top             =   2940
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   1
            Left            =   120
            TabIndex        =   388
            Top             =   495
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   2
            Left            =   120
            TabIndex        =   387
            Top             =   840
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   3
            Left            =   120
            TabIndex        =   386
            Top             =   1140
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   4
            Left            =   120
            TabIndex        =   385
            Top             =   1440
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   5
            Left            =   120
            TabIndex        =   384
            Top             =   1740
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   6
            Left            =   120
            TabIndex        =   383
            Top             =   2040
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   7
            Left            =   120
            TabIndex        =   382
            Top             =   2340
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   290
            Index           =   8
            Left            =   120
            TabIndex        =   381
            Top             =   2640
            Width           =   390
         End
         Begin VB.Label lblStn 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "Stn"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00D2A03C&
            Height          =   285
            Left            =   660
            TabIndex        =   380
            Top             =   60
            Width           =   540
         End
         Begin VB.Label lblCustomer 
            BackStyle       =   0  'Transparent
            Caption         =   "Customer"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00D2A03C&
            Height          =   290
            Left            =   4800
            TabIndex        =   379
            Top             =   0
            Width           =   3165
         End
         Begin VB.Label lblCategory 
            BackStyle       =   0  'Transparent
            Caption         =   "Category"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00D2A03C&
            Height          =   285
            Left            =   1440
            TabIndex        =   378
            Top             =   120
            Width           =   3315
         End
         Begin VB.Label lblPartLoads 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "Part Loads"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00D2A03C&
            Height          =   290
            Left            =   9990
            TabIndex        =   377
            Top             =   150
            Width           =   1515
         End
         Begin VB.Label lblDelliveryDay 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "Day "
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00D2A03C&
            Height          =   315
            Left            =   12360
            TabIndex        =   376
            Top             =   1140
            Width           =   2265
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   285
            Index           =   41
            Left            =   240
            TabIndex        =   375
            Top             =   12900
            Width           =   390
         End
         Begin VB.Label lblStnNumber 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   240
            Index           =   42
            Left            =   0
            TabIndex        =   374
            Top             =   0
            Width           =   390
         End
      End
   End
   Begin VB.Frame fraHolding 
      BackColor       =   &H00DBD9D4&
      Height          =   7380
      Left            =   14040
      TabIndex        =   0
      Top             =   120
      Width           =   2865
      Begin VB.PictureBox Picture1 
         BackColor       =   &H00DBD9D4&
         BorderStyle     =   0  'None
         Height          =   6850
         Left            =   180
         ScaleHeight     =   6855
         ScaleWidth      =   2565
         TabIndex        =   9
         Top             =   480
         Width           =   2565
         Begin VB.OptionButton optCountMode 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Count only"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   3
            Left            =   75
            TabIndex        =   24
            Top             =   5400
            Width           =   2265
         End
         Begin VB.ComboBox cmbProgramNames 
            BackColor       =   &H00FFFFFF&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Left            =   0
            Sorted          =   -1  'True
            TabIndex        =   23
            Text            =   "cmbProgramNames"
            Top             =   300
            Width           =   2490
         End
         Begin VB.OptionButton optCountMode 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Piece and Count"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   2
            Left            =   75
            TabIndex        =   22
            Top             =   5100
            Width           =   2265
         End
         Begin VB.OptionButton optCountMode 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Piece only"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   1
            Left            =   75
            TabIndex        =   21
            Top             =   4800
            Width           =   2265
         End
         Begin VB.OptionButton optCountMode 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Off"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   0
            Left            =   75
            TabIndex        =   20
            Top             =   4500
            Width           =   2265
         End
         Begin VB.CommandButton cmd_Send 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Send"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   390
            Left            =   1320
            TabIndex        =   19
            Top             =   5940
            Width           =   1215
         End
         Begin VB.CommandButton Cmd_exit 
            BackColor       =   &H00DBD9D4&
            Caption         =   "&End"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   390
            Left            =   1320
            TabIndex        =   18
            Top             =   6420
            Width           =   1215
         End
         Begin VB.CommandButton Cmd_FileDelete 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Delete"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   390
            Left            =   1275
            TabIndex        =   17
            Top             =   1200
            Width           =   1215
         End
         Begin VB.CommandButton Cmd_save 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Save"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   390
            Left            =   0
            TabIndex        =   16
            Top             =   1650
            Width           =   1215
         End
         Begin VB.CommandButton Cmd_new 
            BackColor       =   &H00DBD9D4&
            Caption         =   "New"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   390
            Left            =   0
            TabIndex        =   15
            Top             =   1200
            Width           =   1215
         End
         Begin VB.CheckBox chkPurgeOptions 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Mix Cats"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   255
            Index           =   3
            Left            =   0
            TabIndex        =   14
            Top             =   2720
            Width           =   2490
         End
         Begin VB.CheckBox chkPurgeOptions 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Mix Program types"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   255
            Index           =   2
            Left            =   0
            TabIndex        =   13
            Top             =   3240
            Width           =   2490
         End
         Begin VB.CheckBox chkPurgeOptions 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Mix Customers"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   255
            Index           =   0
            Left            =   0
            TabIndex        =   12
            Top             =   2460
            Width           =   2490
         End
         Begin VB.CheckBox chkPurgeOptions 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Mix Programs"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   11
            Top             =   2980
            Width           =   2490
         End
         Begin VB.ComboBox cmb_testweight 
            BackColor       =   &H00D2A03C&
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   330
            ItemData        =   "loading.frx":0000
            Left            =   1110
            List            =   "loading.frx":0002
            TabIndex        =   10
            Text            =   "00.0"
            Top             =   3720
            Width           =   1350
         End
         Begin VB.Line LineCountMode2 
            BorderColor     =   &H00D2A03C&
            X1              =   0
            X2              =   2475
            Y1              =   5760
            Y2              =   5760
         End
         Begin VB.Label lblCountMode 
            BackStyle       =   0  'Transparent
            Caption         =   "Counting Mode"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00D2A03C&
            Height          =   240
            Left            =   0
            TabIndex        =   29
            Top             =   4260
            Width           =   2490
         End
         Begin VB.Label lblPurgeOptions 
            BackStyle       =   0  'Transparent
            Caption         =   "Purging Options"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00D2A03C&
            Height          =   240
            Left            =   0
            TabIndex        =   28
            Top             =   2250
            Width           =   2490
         End
         Begin VB.Line LineCountMode1 
            BorderColor     =   &H00D2A03C&
            X1              =   0
            X2              =   2475
            Y1              =   4125
            Y2              =   4125
         End
         Begin VB.Line Line1 
            BorderColor     =   &H00D2A03C&
            Index           =   0
            X1              =   0
            X2              =   2475
            Y1              =   2175
            Y2              =   2175
         End
         Begin VB.Line Line1 
            BorderColor     =   &H00D2A03C&
            Index           =   3
            X1              =   0
            X2              =   2475
            Y1              =   825
            Y2              =   825
         End
         Begin VB.Label lblCurrentProg 
            BackStyle       =   0  'Transparent
            Caption         =   "Current Program"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00D2A03C&
            Height          =   240
            Left            =   0
            TabIndex        =   27
            Top             =   0
            Width           =   2490
         End
         Begin VB.Label lblPrograms 
            BackStyle       =   0  'Transparent
            Caption         =   "Stored Programs"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00D2A03C&
            Height          =   240
            Left            =   0
            TabIndex        =   26
            Top             =   900
            Width           =   2490
         End
         Begin VB.Label lblAutoWeight 
            BackColor       =   &H00DBD9D4&
            Caption         =   "Reverse Weight"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   240
            Left            =   60
            TabIndex        =   25
            Top             =   3480
            Width           =   2460
            WordWrap        =   -1  'True
         End
      End
   End
   Begin VB.Label lblTotalPurge 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Total Purge Weight"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00D2A03C&
      Height          =   300
      Left            =   13965
      TabIndex        =   426
      Top             =   7560
      Width           =   3015
   End
   Begin VB.Label lblDeliveryDay 
      Alignment       =   2  'Center
      BackColor       =   &H00404040&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   0
      Left            =   1800
      TabIndex        =   8
      Top             =   7125
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Label lblDeliveryDay 
      Alignment       =   2  'Center
      BackColor       =   &H00800080&
      Caption         =   "Sun"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   7
      Left            =   8625
      TabIndex        =   7
      Top             =   7125
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Label lblDeliveryDay 
      Alignment       =   2  'Center
      BackColor       =   &H000080FF&
      Caption         =   "Sat"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   6
      Left            =   7650
      TabIndex        =   6
      Top             =   7125
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Label lblDeliveryDay 
      Alignment       =   2  'Center
      BackColor       =   &H00FF8080&
      Caption         =   "Fri"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   5
      Left            =   6675
      TabIndex        =   5
      Top             =   7125
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Label lblDeliveryDay 
      Alignment       =   2  'Center
      BackColor       =   &H0000C000&
      Caption         =   "Thu"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   4
      Left            =   5700
      TabIndex        =   4
      Top             =   7125
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Label lblDeliveryDay 
      Alignment       =   2  'Center
      BackColor       =   &H0000FFFF&
      Caption         =   "Wed"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   3
      Left            =   4725
      TabIndex        =   3
      Top             =   7125
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Label lblDeliveryDay 
      Alignment       =   2  'Center
      BackColor       =   &H000000FF&
      Caption         =   "Tue"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   315
      Index           =   2
      Left            =   3750
      TabIndex        =   2
      Top             =   7125
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.Label lblDeliveryDay 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "Mon"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   315
      Index           =   1
      Left            =   2775
      TabIndex        =   1
      Top             =   7125
      Visible         =   0   'False
      Width           =   915
   End
End
Attribute VB_Name = "Loading_frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim SelectedStn As Integer
Dim Bank As Integer
Dim StartStn As Integer
Dim EndStn As Integer
Dim StationBagsStart As Integer
Dim cmbCatPosition As Integer
Dim cmbCusPosition As Integer
Dim AllowLineChange As Boolean
Dim AllowSPChange As Boolean
Dim PLCStn As Integer
Dim CountMode As Integer
Dim myOldBarcode(20) As String

Dim TestCat As Long
Dim TestGrp As Long



Private Sub SetLanguage()
    
    lblStn.Caption = TextWord(535)
    'lblStnRelease.Caption = TextWord(535)
    lblCustomer.Caption = TextWord(33)
    
    If dbCatUsed Then
        lblCategory.Caption = TextWord(35)
    Else
        lblCategory.Caption = TextWord(676)
    End If
            
    lblCurrentProg.Caption = TextWord(6)
    lblPrograms.Caption = TextWord(58)
    'lblOptions.Caption = TextWord(322)
    'lblReleasePart.Caption = TextWord(532)
    
    cmdRelease.Caption = TextWord(230)
    'Cmd_open.Caption = TextWord(69)
    Cmd_FileDelete.Caption = TextWord(65)
    Cmd_new.Caption = TextWord(72)
    Cmd_save.Caption = TextWord(316)
    cmd_Send.Caption = TextWord(287)
    
    Cmd_exit.Caption = TextWord(309)
    
    'New for Purging
'    lblPartLoads.Caption = TextWord(583)
'    lblPurgeOptions.Caption = TextWord(582)
'    chkAutoRelease.Caption = TextWord(579)
'    chkAutoPurge.Caption = TextWord(580)
'    lblAutoWeight.Caption = TextWord(581)
'    lblTotalPurge.Caption = TextWord(578)
'    cmdSelect.Caption = TextWord(96)
        
        'New for Purging
    lblPartLoads.Caption = TextWord(583)
    lblPurgeOptions.Caption = TextWord(885)
    'chkAutoRelease.Caption = TextWord(579)
    'chkAutoPurge.Caption = TextWord(580)
    lblAutoWeight.Caption = TextWord(884)
    lblTotalPurge.Caption = TextWord(578)
    'cmdSelect.Caption = TextWord(96)
     
    
    Dim chk As CheckBox
    For Each chk In chkRelease()
        chkRelease(chk.Index).Caption = "" 'TextWord(230)
    Next chk
    
    'Counting and Piece weight mode selection
    lblCountMode.Caption = TextWord(650)
    optCountMode(0).Caption = TextWord(652)
    optCountMode(1).Caption = TextWord(653)
    optCountMode(2).Caption = TextWord(654)
    optCountMode(3).Caption = TextWord(655)
    
    lblDelliveryDay.Caption = TextWord(474) 'Day
    For n = 1 To 7
        lblDeliveryDay(n).Caption = TextWord(690 + n)
    Next n
    
    cmdAll.ToolTipText = TextWord(62)
    
    chkPurgeOptions(0).Caption = TextWord(760) ' Customer
    chkPurgeOptions(1).Caption = TextWord(761) ' Program
    chkPurgeOptions(2).Caption = TextWord(762) ' Program Type
    chkPurgeOptions(3).Caption = TextWord(763) ' Category
    
End Sub


Private Sub chkPurgeOptions_Click(Index As Integer)
    If Index = 2 Then 'Prog Type Must also select progs and cats
        If chkPurgeOptions(Index).Value = vbChecked Then
            chkPurgeOptions(1).Value = vbChecked
            chkPurgeOptions(1).Enabled = False
            chkPurgeOptions(3).Value = vbChecked
            chkPurgeOptions(3).Enabled = False
        Else
            chkPurgeOptions(1).Enabled = True
            chkPurgeOptions(3).Enabled = True
        End If
   ElseIf Index = 1 Then ' Program must also select category
        If chkPurgeOptions(Index).Value = vbChecked Then
            chkPurgeOptions(3).Value = vbChecked
            chkPurgeOptions(3).Enabled = False
        Else
            chkPurgeOptions(3).Enabled = True
        End If
   End If
    If chkPurgeOptions(Index).Value = vbChecked Then
        Data(0) = 1
    Else
        Data(0) = 0
    End If
    
    Call Comms_frm.WritePLC(PLCStn, "D", 366 + Index, 1, Data, False)
End Sub

'Private Sub chkAutoPurge_Click()
'    db_uspSettingSave "SettingsNetwork", "Purging", "AutoPurge", chkAutoPurge.Value, PCNum
'End Sub

'Private Sub chkAutoRelease_Click()
'    db_uspSettingSave "SettingsNetwork", "Purging", "AutoRelease", chkAutoRelease.Value, PCNum
'End Sub
'

Private Sub chkRelease_Click(Index As Integer)
      If Index = 0 Then
        Dim chk As CheckBox
        For Each chk In chkRelease
          If chk.Visible Then
              If chkRelease(Index).Value = 1 Then
                  chk.Value = 1
                  chkPurge(chk.Index).Value = 0
                  chk.Caption = TextWord(230)
                  chk.ForeColor = vbHighlight
              Else
                  chk.Value = 0
                  chk.Caption = "" 'TextWord(230)
              End If
          End If
        Next chk
    End If
    If chkRelease(Index).Value = 1 Then
        chkPurge(Index).Value = 0
        chkRelease(Index).Caption = TextWord(230)
        chkRelease(Index).ForeColor = vbHighlight
    Else
        chkRelease(Index).Caption = "" 'TextWord(230)
        'chkRelease(Index).ForeColor = DarkGrey
    End If
  
End Sub

Private Sub cmb_testweight_Click()
'    Dim Weight As Integer
'    Weight = cmb_testweight.ListIndex
'    db_uspSettingSave "SettingsNetwork", "Purging", "PurgeWeight", Weight, PCNum
    Data(0) = Val(cmb_testweight.Text) * 10
    PurgeOptions(4, PLCStn) = Data(0)
    Call Comms_frm.WritePLC(PLCStn, "D", 370, 1, Data, False)
End Sub

Private Sub cmbCat_Click()
    
    On Error Resume Next
    
    lblCatName(cmbCatPosition).Text = cmbCat.Text
    If dbCatUsed Then
        txtCat(cmbCatPosition).Text = CmbGetNum(cmbCat, EditCat)
    Else
        txtCat(cmbCatPosition).Text = CmbGetNum(cmbCat, EditGrp)
    End If
    
End Sub

Private Sub cmbCus_Click()
            
    On Error Resume Next
    
    lblCusName(cmbCusPosition).Text = cmbCus.Text
    txtCus(cmbCusPosition) = CmbGetNum(cmbCus, EditCus)
    
End Sub

Private Sub cmbProgramNames_Click()
    Screen.MousePointer = vbHourglass
    Call ReadProgram
    Screen.MousePointer = vbNormal
End Sub

Private Sub cmbProgramNames_KeyPress(KeyAscii As Integer)
    cmbKeyPress cmbProgramNames, KeyAscii, EditProgramName
End Sub



Private Sub cmd_Exit_Click()
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG - Loading_frm", "Cmd_Exit_Click", False
    Unload Me
End Sub

Private Sub Cmd_FileDelete_Click()
    Screen.MousePointer = vbHourglass
    Call db_uspLoadingProgramDelete(cmbProgramNames.Text)
    Call db_uspLoadingProgramReadNames(cmbProgramNames)
    NewProgram
    Screen.MousePointer = vbNormal
End Sub

Private Sub Cmd_New_Click()
    Screen.MousePointer = vbHourglass
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG - Loading_frm", "Cmd_New_Click", False
    NewProgram
    Screen.MousePointer = vbNormal
End Sub

Private Sub Cmd_send_Click()
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG - Loading_frm", "Cmd_Send_Click", False
    SendData
End Sub

Private Sub cmdAll_Click()
    
    Dim Box As TextBox
    
    For Each Box In txtCus()
        If Box.Index <> 1 Then
            txtCus(Box.Index).Text = txtCus(1).Text
        End If
    Next Box
    
End Sub

Private Sub cmdAllCat_Click()
    
    Dim Box As TextBox
    
    For Each Box In txtCat()
        If Box.Index <> 1 Then
            txtCat(Box.Index).Text = txtCat(1).Text
        End If
    Next Box
End Sub

Private Sub cmdRelease_Click()
    
    'Only write values if set to purge or release
    On Error Resume Next
       
    
    Dim n As Integer
    Dim Amount As Integer
    Dim lbl As Label
    Dim SendData As Boolean
    Dim StationsToSend As Integer
    
    DisplayForm wait_frm
    
    
    'Amount = (EndStn - StartStn) + 1
    'For n = 1 To Amount
    For Each lbl In lblStnNumber()
    
     n = Val(lbl.Caption)
        If (chkRelease(lbl.Index).Value = 1) Then
            Data(n) = 1 '(StartStn + n - 1)
            ErrorHandler 0, "MANUAL RELEASE", "Station=" & Format$(n) & "  " & Me.lblWeight(n).Text, False
        
        ElseIf (chkPurge(lbl.Index).Value = 1) Then
            Data(n) = 2
        Else
            Data(n) = 0
        End If
        If Data(n) > 0 And n > StationsToSend Then StationsToSend = n
                
            
            
        chkRelease(n).Value = 0
        chkPurge(n).Value = 0
    Next lbl
    
    If StationsToSend > 0 Then
        Comms_frm.WritePLC PLCStn, "D", 800, StationsToSend + 1, Data(), False, "Loading"
    End If
    
End Sub

Private Sub cmdSelect_Click()
        
    
    Dim lbl As Label
    Dim Weight As Integer
    Dim PurgeWt As Integer
    
        
    For Each lbl In lblWeight()
        
        
        Weight = Val(lblWeight(lbl.Index).Text) * 10
        PurgeWt = Val(cmb_testweight.Text) * 10
        
        If ((chkAutoRelease.Value = 1) And (Weight > PurgeWt)) Then
            chkRelease(lbl.Index).Value = 1
        Else
            chkRelease(lbl.Index).Value = 0
        End If
        
        
    Next lbl
    
    
    
            
End Sub

Private Sub Command1_Click()
Layout_Form

End Sub

Private Sub Form_Activate()
    CheckFormPosition Me
End Sub

Private Sub Form_Load()
    
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG - Loading_frm", "Form_Load Start", False
    
    Bank = ThisStation
    PLCStn = PLC_StnBank(Bank)
    
    Layout_Form
    If Bank <> 0 Then
        Me.Caption = db_uspSettingGet("SettingsNetwork", "Config", "StationName" & Str(Bank), "No Name! " & Index, PCNum)
    Else
        Me.Caption = TextWord(533)
        NewProgram
    End If
    
    Dim PurgeOpt As CheckBox
    For Each PurgeOpt In chkPurgeOptions
        PurgeOpt.Visible = StationPurging
        If PurgeOptions(PurgeOpt.Index, PLC) = 1 Then
            PurgeOpt.Value = vbChecked
        Else
            PurgeOpt.Value = vbUnchecked
        End If
    Next
    
    Dim CatDBused As String
    
    CatDBused = db_uspSettingGet("SettingsNetwork", "dbOptions", dbSettingName(CatDbCatEqualGroup), 0, PCNum)
    chkPurgeOptions(3).Visible = StationPurging And CatDBused = "1"
    
    SetLanguage
    CenterForm Me
    Me.Top = 100
    
    SetDisplay
    
    Screen.MousePointer = vbArrow
    
    If DebugToErrorFile Then ErrorHandler 0, "DEBUG - Loading_frm", "Form_Load Complete" & " PLCStn=" & Str(PLCStn), False
    
End Sub
Private Sub chkPurge_Click(Index As Integer)
    If Index = 0 Then
        Dim chk As CheckBox
        For Each chk In chkPurge
            If chk.Visible And (chk.Index > 0) Then
                If chkPurge(Index).Value = 1 Then
                    chk.Value = 1
                    chkRelease(chk.Index).Value = 0
                    chkRelease(chk.Index).Caption = TextWord(581)
                    chkRelease(chk.Index).ForeColor = vbRed
                Else
                    chk.Value = 0
                    chkRelease(chk.Index).Caption = "" 'TextWord(230)
                    'chkRelease(chk.Index).ForeColor = DarkGrey
                End If
            End If
        Next chk
    End If
    If chkPurge(Index).Value = 1 Then
        chkRelease(Index).Value = 0
        chkRelease(Index).Caption = TextWord(581)
        chkRelease(Index).ForeColor = vbRed
    Else
        chkRelease(Index).Caption = "" 'TextWord(230)
        'chkRelease(Index).ForeColor = DarkGrey
    End If
    
    
End Sub
Private Sub SetDisplay()
    
    On Error GoTo SetDisplayError
    
    Call db_uspLoadingProgramReadNames(cmbProgramNames)
    cmbProgramNames.Text = db_uspSettingGet("SettingsNetwork", "Config", "StationGroupName" & Str(Bank), "", PCNum)
    
    Dim lbl As TextBox
    
    'Set Display Depending if View / Make Loading Program
    If Bank <> 0 Then
    
        'Cmd_FileDelete.Visible = False
        'Cmd_save.Visible = False
        
        'New for Purging
        
        For Each lbl In lblWeight()
            'chkPurge(lbl.Index).Visible = StationPurging
            chkPurge(lbl.Index).ForeColor = DarkGrey
            'chkRelease(lbl.Index).Visible = StationPartLoads
            chkRelease(lbl.Index).ForeColor = DarkGrey
        Next lbl
        
        cmdRelease.Visible = StationPartLoads
        lblPartLoads.Visible = StationPartLoads
        
        lblPurgeOptions.Visible = StationPurging
        'chkAutoRelease.Visible = StationPurging
        'chkAutoPurge.Visible = StationPurging
        lblAutoWeight.Visible = StationPurging
        lblTotalPurge.Visible = StationPurging
        cmb_testweight.Visible = StationPurging
        lblWeightPurge.Visible = StationPurging
        'cmdSelect.Visible = StationPurging
              
        
    Else
        cmd_Send.Visible = False
        lblStn.Visible = False
       
        For Each lbl In lblWeight()
            chkPurge(lbl.Index).Visible = False
            lblWeight(lbl.Index).Visible = False
            lblStnNumber(lbl.Index).Visible = False
            lblProgress(lbl.Index).Visible = False
            chkRelease(lbl.Index).Visible = False
        Next lbl
        'lblReleasePart.Visible = False
        'cmbRelease.Visible = False
        'lblStnRelease.Visible = False
        cmdRelease.Visible = False
        
        'New for Purging
        lblPartLoads.Visible = False
        lblPurgeOptions.Visible = False
        chkAutoRelease.Visible = False
        chkAutoPurge.Visible = False
        lblAutoWeight.Visible = False
        lblTotalPurge.Visible = False
        cmb_testweight.Visible = False
        lblWeightPurge.Visible = False
        cmdSelect.Visible = False
    End If
        
    'Add Names to Category Selection Combo
    If dbCatUsed Then
        PopulateCategoryCombo cmbCat, ""
    Else
        PopulateGroupCombo cmbCat, ""
    End If
    
    'Add Names to Customer Selection Combo
    PopulateCustomerCombo cmbCus, ""
    
    'Show the Current Values in the PLC
    Dim m           As Integer
    Dim Stn         As Label
    Dim CatNum      As Long
    Dim CatID       As Integer
    Dim CusNum      As Long
    Dim CusID       As Integer
       
    Dim Ur1         As Long
    Dim Ur1ID       As Integer
       
    Dim Ur2         As Long
    Dim Ur2ID       As Integer
      
    Dim Bid         As Long
      
    'Read from SQL Server
    Dim Dummy       As Long
    Dim DummyTime   As String
    Dim Notes       As String
    Dim Special     As Long
    Dim SpecialID   As Integer
 Dim LocalBank   As Integer
    Dim t As Integer
       
    m = 1

    t = 1
    i = 0
    'txtCus(m).Text = dbGetLongFromNumVal(BagCus(StationBagsStart, PLCStn), EditCus)
    
    For Each Stn In lblStnNumber()

research:
        'Calculate the station number from DisplayBank and Bank.
        LocalBank = DisplayBank(Bank, t)
        If LocalBank > 0 Then
            StartStn = Loading_StartStn(LocalBank)
            EndStn = Loading_EndStn(LocalBank)
            n = StartStn + i
            If n > EndStn And t < MaxStationBanks Then
                t = t + 1
                i = 0
                GoTo research
            End If
        Else
            Debug.Print 'Exit ?'
        End If

        If n <= EndStn Then
            If Bank <> 0 Then
                
                'StnBag = (n + StationBagsStart - StartStn)
                StnBag = getBagNumFromStation(n)
                Grp = BagGrp(StnBag, PLCStn)
                Cat = BagCat(StnBag, PLCStn)
                Cus = BagCus(StnBag, PLCStn)
                Ur1 = BagUr1(StnBag, PLCStn)
                Ur2 = BagUr2(StnBag, PLCStn)
                Bid = BagBid(StnBag, PLCStn)
                
                Debug.Print Grp, Cat, Cus, Ur1, Ur2
                
                lblStnNumber(m).Caption = Format$(n)
                If dbCatUsed Then
                    txtCat(m).Text = dbGetLongFromNumVal(CLng(Cat), EditCat)
                Else
                    txtCat(m).Text = dbGetLongFromNumVal(CLng(Grp), EditGrp)
                End If
                txtCus(m).Text = dbGetLongFromNumVal(CLng(Cus), EditCus)
                               
            End If
        Else
            lblStnNumber(m).Visible = False
            txtCus(m).Visible = False
            lblCusName(m).Visible = False
            txtCat(m).Visible = False
            lblCatName(m).Visible = False
            lblProgress(m).Visible = False
            lblWeight(m).Visible = False
            chkRelease(m).Visible = False
            chkPurge(m).Visible = False
        End If
        m = m + 1
        i = i + 1
    Next Stn
    
    'Day
    txtDeliveryDay.Text = Format$(BagDay(StationBagsStart, PLCStn))
    GetDeliveryDayColours
    lblDelliveryDay.Visible = UseDay
    txtDeliveryDay.Visible = UseDay
    lblDeliveryColour.Visible = UseDay
        
'    'Purging Weight Combo
'    For n = 0 To 250
'        cmb_testweight.AddItem Format$(n / 10, "00.0") & " " & TextWord(224), n
'    Next n
'    cmb_testweight.ListIndex = Val(db_uspSettingGet("SettingsNetwork", "Purging", "PurgeWeight", 200, PCNum))
'
'    chkAutoPurge.Value = db_uspSettingGet("SettingsNetwork", "Purging", "AutoPurge", 0, PCNum)
'    chkAutoRelease.Value = db_uspSettingGet("SettingsNetwork", "Purging", "AutoRelease", 0, PCNum)
     'Purging Weight Combo
    Dim PurgeWeightMin As Integer
    PurgeWeightMin = 50 'Maximum wieght of load the be reversed
    
    For n = PurgeWeightMin To 900
        cmb_testweight.AddItem Format$(n / 10, "00.0") & " " & TextWord(224), n - PurgeWeightMin
        Index = Index + 1
    Next n
    'cmb_testweight.ListIndex = Val(xFileGetSetting("SettingsNetwork", "Purging", "PurgeWeight", 200, NetPath, PCNum))
    If (PurgeOptions(4, PLCStn) - PurgeWeightMin) > 0 Then
        cmb_testweight.ListIndex = PurgeOptions(4, PLCStn) - PurgeWeightMin
    Else
        cmb_testweight.ListIndex = 0
    End If
    
    
    'Counting Mode
    Dim CountMode As Integer
    CountMode = SequenceStep(94, PLCStn)
    If CountMode < 0 Or CountMode > 3 Then
        CountMode = 0
    End If
    optCountMode(CountMode) = True
    
    'Counting and Piece weight mode selection
    lblCountMode.Visible = False
    optCountMode(0).Visible = False
    optCountMode(1).Visible = False
    optCountMode(2).Visible = False
    optCountMode(3).Visible = False
    LineCountMode1.Visible = False
    LineCountMode2.Visible = False

Exit Sub
SetDisplayError:
    
    ErrorHandler Err, "Loading_frm SetDisplay", Err.Description, True
    Resume Next
    
End Sub
Private Sub NewProgram()
            
            
    cmbCat.Visible = False
    cmbCus.Visible = False
        
    'Set All boxes to Zero
    Dim Box As TextBox
    
    cmbProgramNames.Text = ""
    
    'txtCus(1).Text = "0"
    For Each Box In txtCat()
               
        txtCus(Box.Index).Text = "0"
        txtCat(Box.Index).Text = "0"
        'txtLine1(Box.Index).Text = "0"
        'txtLine2(Box.Index).Text = "0"
        'txtSP1(Box.Index).Text = "0"
        'txtSP2(Box.Index).Text = "0"
        'txtSP3(Box.Index).Text = "0"
        
    Next Box
    
End Sub


Private Sub lblCatName_Click(Index As Integer)
    
    With cmbCat
        .Top = lblCatName(Index).Top
        .Left = lblCatName(Index).Left
        .Width = lblCatName(Index).Width
        .Visible = True
        .SetFocus
    End With
    cmbCatPosition = Index
    cmbCus.Visible = False

    
End Sub

Private Sub lblCatName_GotFocus(Index As Integer)
    lblHidden.SetFocus
End Sub

Private Sub lblCusName_Click(Index As Integer)
    
    With cmbCus
        .Top = lblCusName(Index).Top
        .Left = lblCusName(Index).Left
        .Width = lblCusName(Index).Width
        .Visible = True
        .SetFocus
    End With
    cmbCusPosition = Index
    cmbCat.Visible = False

End Sub

Private Sub lblCusName_GotFocus(Index As Integer)
    lblHidden.SetFocus
End Sub

Private Sub lblDeliveryColour_GotFocus()
    lblHidden.SetFocus
End Sub

Private Sub lblProgress_GotFocus(Index As Integer)
    lblHidden.SetFocus
End Sub

Private Sub lblWeight_GotFocus(Index As Integer)
    lblHidden.SetFocus
End Sub

Private Sub lblWeightPurge_GotFocus()
    lblHidden.SetFocus
End Sub

Private Sub optCountMode_Click(Index As Integer)
    CountMode = Index
End Sub


Private Sub tmr_update_Timer()
    
    Dim pic As Integer
    Dim Weight As Integer
    Dim MinWeight As Integer
    Dim SP_1 As Integer
    Dim SP_2 As Integer
    Dim SP_3 As Integer
    Dim TotalKg As Integer
    Dim Cat As Integer
    Dim CatID As Integer
    Dim GrpID As Integer

    TotalKg = 0 'Clear the total purge weight

    MinWeight = 3

    Dim lbl As TextBox
    Dim BagIndex As Integer

    For Each lbl In lblWeight()
        If (Not ReleaseByCount And lblWeight(lbl.Index).Visible) Then
        
            BagIndex = getBagNumFromStation(Val(lblStnNumber(lbl.Index).Caption))
            lblWeight(lbl.Index).Text = Format$(BagWgt(BagIndex, PLCStn) / 10, "#0.0") & " " & TextWord(224)

            'Weight = (BagWgt(StationBagsStart + StartStn + lbl.Index - 2, PLCStn) / 10)
            Weight = (BagWgt(BagIndex, PLCStn) / 10)

            If dbCatUsed Then
                Call dbGetIDFromLongID(EditCat, txtCat(lbl.Index).Text, CatID)
                Call dbGetID(EditGrp, CInt(CatGroup(CatID)), GrpID)
            Else
                Call dbGetIDFromLongID(EditGrp, txtCat(lbl.Index).Text, CatID)
                Call dbGetID(EditGrp, CInt(CatGroup(CatID)), GrpID)
            End If
            If dbSettingValue(CatDbUseSetpoints) Then
                SP_1 = Val(CatSP1(CatID))
                SP_2 = Val(CatSP2(CatID))
                SP_3 = Val(CatSP3(CatID))
            Else
                SP_1 = Val(GrpSP1(GrpID))
                SP_2 = Val(GrpSP2(GrpID))
                SP_3 = Val(GrpSP3(GrpID))
            End If
            pic = 1
            
            If Weight > MinWeight Then pic = 2
            If Weight > SP_1 Then pic = 3
            If Weight > SP_2 Then
                pic = 4
            ElseIf StnInQ(stnIndex) Then
                pic = 0
            End If
            
            If Weight > SP_3 Then pic = 5
            
            If pic = 0 Then
                lblProgress(lbl.Index).BackColor = &H80FF80 '&H80FF&
            ElseIf pic = 4 Then
                lblProgress(lbl.Index).BackColor = &H80FF80    'Green
            ElseIf pic = 5 Then
                lblProgress(lbl.Index).BackColor = &H8080FF    'Red
            Else
                lblProgress(lbl.Index).BackColor = &H8000000E  'White
            End If
            lblProgress(lbl.Index).Text = TextWord(570 + pic)

            If (chkPurge(lbl.Index).Value = 1) Then TotalKg = (TotalKg + (Val(lblWeight(lbl.Index).Text) * 10))
        Else
            lblWeight(lbl.Index).Text = Format$(BagWgt(StationBagsStart + lbl.Index - 1, PLCStn), "0000")
        End If
    Next lbl



    lblWeightPurge.Text = Format(TotalKg / 10, "#0.0") & " " & TextWord(224)
    
End Sub



Private Sub txtCat_Change(Index As Integer)
    
    On Error GoTo txtCat_Change_Error
        
    If dbCatUsed Then
        lblCatName(Index).Text = dbGetNameFromNum(txtCat(Index), EditCat)
    Else
        lblCatName(Index).Text = dbGetNameFromNum(txtCat(Index), EditGrp)
    End If

Exit Sub
txtCat_Change_Error:
    ErrorHandler Err, "Loading_frm", "txtCat_Change", False
End Sub

Private Sub txtCat_Click(Index As Integer)
    HighlightTextBox txtCat(Index)
    cmbCat.Visible = False
    cmbCus.Visible = False
End Sub

Private Sub txtCat_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    KeyCode = BoxCheckBackSpace(txtCat(Index), KeyCode)
End Sub

Private Sub txtCat_KeyPress(Index As Integer, KeyAscii As Integer)
    BoxKeyPress txtCat(Index), KeyAscii, EditCat
End Sub

Private Sub txtCus_Change(Index As Integer)
    
    lblCusName(Index).Text = dbGetNameFromNum(txtCus(Index), EditCus)
    cmbCus.Visible = False
        
    cmbCus.Visible = False
              
End Sub

Private Sub txtCus_Click(Index As Integer)
    HighlightTextBox txtCus(Index)
End Sub

Private Sub txtCus_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    KeyCode = BoxCheckBackSpace(txtCus(Index), KeyCode)
End Sub

Private Sub txtCus_KeyPress(Index As Integer, KeyAscii As Integer)
    BoxKeyPress txtCus(Index), KeyAscii, EditCus
End Sub

Public Sub SendData()
    
    Dim m           As Integer
    Dim BagIndex    As Integer
            
    Dim CatIndex    As Integer
    Dim Stns        As Integer
        
    Dim Grp         As Integer
    Dim Dst         As Integer
    Dim Wgt         As Integer
    Dim Cnt         As Integer
    Dim Ur1         As Integer
    Dim Bid         As Long
    Dim Cat         As Long
    Dim MIS         As Long
    Dim Cus         As Long
    Dim Ur2         As Long
    Dim TimeStamp As Long
    
    Dim Day         As Integer
    
    Dim Acc         As Date
    Dim ID          As Integer
      
    Dim Dummy       As Long
    Dim DummyTime   As String
     
    On Error GoTo SendSataError
    
    'Save Program Name
    db_uspSettingSave "SettingsNetwork", "Config", "StationGroupName" & Str(Bank), cmbProgramNames.Text, PCNum
    
    'Write All Data to PLC
    '---------------------
    
    Me.cmd_Send.Enabled = False
    
    DisplayForm wait_frm
    Screen.MousePointer = vbHourglass
    
            
    'All Station bag data
    CatIndex = 1
    Dim Local_EndStn As Integer
    Dim Local_StartStn As Integer
    Dim Local_BagStart As Integer
    Dim lbl As Label
                    
    
    Local_EndStn = EndStn
    Local_StartStn = StartStn
    Local_BagStart = StationBagsStart
    
    Stns = Local_EndStn - Local_StartStn + 1
    
    'Call dbGetIDFromLongID(EditCus, txtCus(1).Text, ID)
    'Cus = CusNum(ID)
    If UseDay Then Day = Val(txtDeliveryDay.Text) Else Day = 0
      
    m = 0
         'For BagIndex = Local_BagStart To Local_BagStart + (Stns - 1)

    For Each lbl In lblStnNumber
        If lbl.Visible Then
            BagIndex = getBagNumFromStation(Val(lbl.Caption))
                                                           
             'Set Customer and Day as the new selected values
             Call dbGetIDFromLongID(EditCus, txtCus(CatIndex).Text, ID)
             Cus = CusNum(ID)
             If dbCatUsed Then
                 Call dbGetIDFromLongID(EditCat, txtCat(CatIndex).Text, ID)
                 Cat = CatNum(ID)
                 Grp = CatGroup(ID)

             Else
                 Call dbGetIDFromLongID(EditGrp, txtCat(CatIndex).Text, ID)
                 Grp = GrpNum(ID)

                 Cat = Grp
             End If
             Dst = 0 'BagDst(BagIndex, PLCStn) 'Clear any manual destinations
             Wgt = BagWgt(BagIndex, PLCStn)
             Cnt = BagCnt(BagIndex, PLCStn)
             Bid = BagBid(BagIndex, PLCStn)
             MIS = BagMis(BagIndex, PLCStn)
             TimeStamp = BagTimestamp(BagIndex, PLCStn)


            
                         
             'Set local Bag vars so display writes.
             BagGrp(BagIndex, PLCStn) = Grp
             BagCat(BagIndex, PLCStn) = Cat
             BagCus(BagIndex, PLCStn) = Cus

                                                  
             If Demo Then
                 BagUr1(BagIndex, PLCStn) = Ur1
                 BagUr2(BagIndex, PLCStn) = Ur2
             End If
                                                
                                                  
             'Call WriteBag(PLCStn, BagIndex, CInt(TestGrp), Dst, Wgt, Cnt, Ur1, Bid, TestCat, MIS, Cus, Ur2, False, "Loading")
             Call WriteBag(PLCStn, BagIndex, Grp, Dst, Wgt, Cnt, Ur1, Bid, Cat, MIS, Cus, Ur2, TimeStamp, False, "Loading")  'ZANE
                            
             CatIndex = CatIndex + 1
        End If
     Next lbl
    'Next BagIndex
       

    Dim sendBank As Integer
    Dim n As Integer
    For n = 1 To MaxStationBanks
        sendBank = DisplayBank(Bank, n)
        If sendBank > 0 Then SendAllStationPLC sendBank
    Next n
    'Counting Mode
    Data(0) = CountMode
    Comms_frm.WritePLC PLCStn, "D", 994, 1, Data(), False, "Loading"
       
    Screen.MousePointer = vbArrow
        
    Me.cmd_Send.Enabled = True
    
Exit Sub
SendSataError:
    ErrorHandler 0, "Loading_frm SendData", Err.Description, False
    Resume Next
End Sub
Private Sub ReadProgram()
    
    On Error GoTo ReadProgramError
    
    Dim Amount      As Integer
    Dim n           As Integer
    Dim lbl         As Label
    
'    For n = 1 To LD_File
'        Loading.ProgramCat(n) = 0
'        Loading.ProgramCus(n) = 0
'    Next n
    
    'Call the SQL Server Stored Procedure
    Loading.ProgramName = cmbProgramNames.Text
    db_uspLoadingProgramRead
    
    Amount = EndStn - StartStn + 1
'    For n = 1 To Amount
'        If n = 1 Then
'            txtCus(n).Text = dbGetLongFromNumVal(Loading.ProgramCus(n), EditCus)
'            txtCat(n).Text = 0 'Force the change event
'            txtCat(n).Text = dbGetLongFromNumVal(Loading.ProgramCat(n), EditCat)
'        Else
'            txtCus(n).Text = dbGetLongFromNumVal(Loading.ProgramCus(n), EditCus)
'            txtCat(n).Text = 0 'Force the change event
'            txtCat(n).Text = dbGetLongFromNumVal(Loading.ProgramCat(n), EditCat)
'        End If
'    Next n
    For Each lbl In lblStnNumber
        n = Val(lbl.Caption)
        txtCus(lbl.Index).Text = dbGetLongFromNumVal(Loading.ProgramCus(n), EditCus)
        txtCat(lbl.Index).Text = 0 'Force the change event
        txtCat(lbl.Index).Text = dbGetLongFromNumVal(Loading.ProgramCat(n), EditCat)
     Next lbl
        
        
Exit Sub

ReadProgramError:
    ErrorHandler Err, "Loading ReadProgram", Err.Description, False
End Sub


Private Sub Cmd_Save_Click()
       
    Screen.MousePointer = vbHourglass
       
    On Error GoTo Cmd_Save_Error
       
    Dim Amount          As Integer
    Dim CatID           As Integer
    Dim CusID           As Integer
    Dim n               As Integer
    
   ' Amount = EndStn - StartStn + 1
       
    Loading.ProgramName = cmbProgramNames.Text
    
    If Loading.ProgramName <> "" Then
        
'        For n = 1 To LD_File
'            If n <= Amount Then
'                'Call dbGetIDFromLongID(EditCus, txtCus(1).Text, CusID)
'                Call dbGetIDFromLongID(EditCus, txtCus(n).Text, CusID)
'                Call dbGetIDFromLongID(EditCat, txtCat(n).Text, CatID)
'                Loading.ProgramCus(n) = CusNum(CusID)
'                Loading.ProgramCat(n) = CatNum(CatID)
'            Else
'                Loading.ProgramCus(n) = 0
'                Loading.ProgramCat(n) = 0
'            End If
'        Next n
        
        'Clear the loading program data so we only add new data.
        ReDim Loading.ProgramCat(LD_File)
        ReDim Loading.ProgramCus(LD_File)
        ReDim Loading.Used(LD_File)
        For Each lbl In lblStnNumber()
            n = Val(lbl.Caption)
            If (n <= LD_File) And lbl.Visible Then
                Loading.Used(n) = True
                Loading.ProgramCus(n) = Val(txtCus(lbl.Index))
                Loading.ProgramCat(n) = Val(txtCat(lbl.Index))
            End If

        Next lbl
        
        'Call SQL Server stored proceedure
        Call db_uspLoadingProgramWrite
    
    End If
    
    'Re-populate the program name combo
    Call db_uspLoadingProgramReadNames(cmbProgramNames)
    cmbProgramNames.Text = Loading.ProgramName
    
    Screen.MousePointer = vbNormal
    
Exit Sub

Cmd_Save_Error:
     ErrorHandler Err, "Loading Cmd_Save_Click", Err.Description, False
End Sub
Private Sub GetDeliveryDayColours()

    DeliveryDay = Val(txtDeliveryDay.Text)
    If DeliveryDay > 0 And DeliveryDay <= 7 Then
        lblDeliveryColour.BackColor = lblDeliveryDay(DeliveryDay).BackColor
        lblDeliveryColour.ForeColor = lblDeliveryDay(DeliveryDay).ForeColor
        lblDeliveryColour.Text = lblDeliveryDay(DeliveryDay).Caption
    Else
        lblDeliveryColour.BackColor = vbDarkGrey
        lblDeliveryColour.ForeColor = vbWhite
        lblDeliveryColour.Text = ""
    End If

End Sub

Private Sub txtDeliveryDay_Change()
    GetDeliveryDayColours
End Sub

Private Sub txtDeliveryDay_Click()
    HighlightTextBox txtDeliveryDay
    cmbCat.Visible = False
    cmbCus.Visible = False
End Sub

Private Sub txtDeliveryDay_KeyDown(KeyCode As Integer, Shift As Integer)
    KeyCode = BoxCheckBackSpace(txtDeliveryDay, KeyCode)
End Sub

Private Sub txtDeliveryDay_KeyPress(KeyAscii As Integer)
    BoxKeyPress txtDeliveryDay, KeyAscii, EditDay, 7
End Sub

Private Sub Layout_Form()
    'Clear all positions
    For n = 1 To 24
        ReDraw n, 0, False
    Next n
    Dim newcentre As Integer
    Dim CurrentBank As Integer
    Dim Stn As Integer
    Dim Height As Integer
    Dim Space As Integer
    Dim stnIndex As Integer
    
    stnIndex = 1
    newcentre = 1282
    Height = txtCat(1).Height
    Space = 10

    chkRelease(0).Top = newcentre - Height - Space - (chkRelease(Index).Height / 2)
    chkPurge(0).Top = newcentre - Height - Space - (chkPurge(Index).Height / 2)
    chkRelease(0).Visible = StationPartLoads
    chkPurge(0).Visible = StationPurging
    
    
    For n = 1 To MaxStationBanks
       CurrentBank = DisplayBank(Bank, n)
        If n = 1 Then
            StationBagsStart = Loading_BagStart(DisplayBank(Bank, 1))
            StartStn = Loading_StartStn(DisplayBank(Bank, 1))
        Else
            newcentre = newcentre + (Space * 10)
        End If
        If CurrentBank = 0 Then Exit For
        EndStn = Loading_EndStn(CurrentBank)
    
        For Stn = Loading_StartStn(CurrentBank) To Loading_EndStn(CurrentBank)
            ReDraw stnIndex, newcentre, True
            newcentre = newcentre + Height + Space
            stnIndex = stnIndex + 1
        Next Stn
        
    Next n
    
    
    
End Sub

Private Sub ReDraw(Index As Integer, newcentre As Integer, Visible As Boolean)
 
            

    lblStnNumber(Index).Left = 0
    txtCat(Index).Left = 375
    lblCatName(Index).Left = 1275
    lblCatName(Index).Width = 3480
    txtCus(Index).Left = 4750
    lblCusName(Index).Left = 5650
    lblCusName(Index).Width = 3480
    lblProgress(Index).Left = 9125
    lblWeight(Index).Left = 10475
    chkRelease(Index).Left = 11450
    chkPurge(Index).Left = 12800
        
    lblStnNumber(Index).Top = newcentre - (lblStnNumber(Index).Height / 2)
    txtCat(Index).Top = newcentre - (txtCat(Index).Height / 2)
    lblCatName(Index).Top = newcentre - (lblCatName(Index).Height / 2)
    txtCus(Index).Top = newcentre - (txtCus(Index).Height / 2)
    lblCusName(Index).Top = newcentre - (lblCusName(Index).Height / 2)
    lblProgress(Index).Top = newcentre - (lblProgress(Index).Height / 2)
    lblWeight(Index).Top = newcentre - (lblWeight(Index).Height / 2)
    chkRelease(Index).Top = newcentre - (chkRelease(Index).Height / 2)
    chkPurge(Index).Top = newcentre - (chkPurge(Index).Height / 2)
    
    lblStnNumber(Index).Visible = Visible
    txtCat(Index).Visible = Visible
    lblCatName(Index).Visible = Visible
    txtCus(Index).Visible = Visible
    lblCusName(Index).Visible = Visible
    lblProgress(Index).Visible = Visible
    lblWeight(Index).Visible = Visible
    chkRelease(Index).Visible = Visible And StationPartLoads
    chkPurge(Index).Visible = Visible And StationPurging

    'set the form height..
    Dim frmHeight As Integer
    frmHeight = lblStnNumber(Index).Top + 1000
    
    If frmHeight > 9390 Then
        Me.Height = frmHeight
    Else
        Me.Height = 9390
    End If
    Frame1.Height = Me.Height - 870
    Picture2.Height = Me.Height - 1050
    
    If Index = 1 Then
        ' Set the titles
        lblStn.Left = lblStnNumber(Index).Left
        cmdAllCat.Left = lblCatName(Index).Left
        lblCategory.Left = cmdAllCat.Left + cmdAllCat.Width + 50
        cmdAll.Left = lblCusName(Index).Left
        lblCustomer.Left = cmdAll.Left + cmdAll.Width + 50
        lblPartLoads.Left = chkRelease(Index).Left
        
        Dim newtop As Integer
        newtop = lblStnNumber(Index).Top - lblStn.Height
        
        lblStn.Top = (newtop - (lblStn.Height / 2))
        cmdAllCat.Top = (newtop - (cmdAllCat.Height / 2))
        lblCategory.Top = (newtop - (lblCategory.Height / 2))
        cmdAll.Top = (newtop - (cmdAll.Height / 2))
        lblCustomer.Top = (newtop - (lblCustomer.Height / 2))
        chkRelease(0).Left = 11450
        chkPurge(0).Left = 12800
        lblPartLoads.Top = (chkPurge(0).Top - lblPartLoads.Height - 10)
    
    End If

  
End Sub
Private Function getBagNumFromStation(Stn As Integer)

Dim n As Integer

For n = 1 To MaxStations
    If (Stn >= Loading_StartStn(n)) And (Stn <= Loading_EndStn(n)) Then
        getBagNumFromStation = Loading_BagStart(n) + (Stn - Loading_StartStn(n))
        Exit Function
    End If
Next n
'return 0 if not found
getBagNumFromStation = 0
End Function
