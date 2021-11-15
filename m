Return-Path: <linux-ntb+bncBDOOLPFLRMPBBI5AZKGAMGQE7EAKL7Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6745A450A1E
	for <lists+linux-ntb@lfdr.de>; Mon, 15 Nov 2021 17:51:48 +0100 (CET)
Received: by mail-qv1-xf3e.google.com with SMTP id dz17-20020ad45891000000b003bbb4aba6d7sf16511781qvb.12
        for <lists+linux-ntb@lfdr.de>; Mon, 15 Nov 2021 08:51:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7Dt65ti7yTZrIAb6QE7tpCY+rZZi03rfVV5dxy2KM+k=;
        b=EDRLdgyf7fxcFFSU+XfYO0s7qXRR0FEoDkFKXP61vazJZDLsqqSnZthNrN2IbNnwHu
         NJi45x+A+sNWPPKb6tJOSc5ZiD6jiKcmO2HevLZFb/2mIdpgMgMo45+ApmxMe3mtbeBM
         2AFklWSVzVcklf7FTDU9H/baN505iEhTWzpwdI9ZUJlP5lcCDSKfwzRcWBbBmr03TP2W
         9/3mamX2NnCOA/TIGh78cYYx6xkngzsHLjVXLi2/0KPgxZIgOAQcN1cQ5VU0pDJX+C9V
         WBkn3CS88vbYpsyoWY/97DL8qZLQPRpafFBq4FfNLKa4DkeEozQ+WBpcN+OUDG+AgpFV
         r7sg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7Dt65ti7yTZrIAb6QE7tpCY+rZZi03rfVV5dxy2KM+k=;
        b=khlKXyEJTeZXVga3T+APot85Eu0EDVM/ekDp5prkl2Ps5ei/5dZU3OnQ/Qm1km0dXm
         ZEtIyVYuCPHCYlWjwat8oLTn9218XZQtmUOkakPcyBT/nCJO0AARgh05o8TTpR7vksDA
         znqBj0u5gtkzBKoqe3oqNdpU3ujGynC0YWX9DMGlmNMC8BJDmUmeHOj0XQZdUzo+FyGo
         F6l+keqpuSsLq9cB3BZd381VZKylISLWUyO4lReiAyBvF/7m7btkCVhc/+Yk38oylqRM
         c/lkTdhkTElENDipWi9flaGwiB6e9wZW7TE+VtDY4Ij9B83moYDvWUCEOmzDchOGw33u
         Xlgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7Dt65ti7yTZrIAb6QE7tpCY+rZZi03rfVV5dxy2KM+k=;
        b=z9v2DBotFSEwx/1GZPxsro5Enfj2e8DzMl03nVw042eYYQ5bmmsrtT5W3Ob8j6DokP
         G2CvteLnTK3DxZnFMRHu5yy7+xy76M4z6VJfx9EpIxFcRRtpOwzVR1YVRsBN+4NDnJpp
         LjY7dBBui1fzdmHSAh/bJ+LVnafEpyCc1T3EvHhVAFyXWmL3B4VqOyqj1J1U7LlAYq+m
         ji2TNw3VXlgPmWy0TsAmQ+7zJ1/YutvR1WAQLmv2k36fLej228o+ctTLaUDDfjlCtnYE
         aApkyNUQ55Hffv8YX7EnrvZUoblxKygrQwpDUPf20XkAYo1dMibUdKKKztZledjn9xoM
         +FlA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM53342xU+d37lCIui/SLb9+DAMi1ZMh6iEPI8R9PQPZcSKh3DLLP3
	5JfdexCHGjtwLJ3/CyNeuF0=
X-Google-Smtp-Source: ABdhPJx0sr7r991LHdkmSh55DZa7KN91PbABV+40PkBpxd7a4ED0zqObmz0NXy+RQynEmDyaE3jd/w==
X-Received: by 2002:a05:620a:1585:: with SMTP id d5mr374375qkk.96.1636995107321;
        Mon, 15 Nov 2021 08:51:47 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6214:1866:: with SMTP id eh6ls2912243qvb.1.gmail; Mon,
 15 Nov 2021 08:51:46 -0800 (PST)
X-Received: by 2002:a05:6214:ac2:: with SMTP id g2mr38968886qvi.28.1636995106802;
        Mon, 15 Nov 2021 08:51:46 -0800 (PST)
Date: Mon, 15 Nov 2021 08:51:46 -0800 (PST)
From: Eyal ben ner <eyalbenn@gmail.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <24826bb2-da96-4ea8-9b75-6f40425e0368n@googlegroups.com>
Subject: ntb_tool: asymmetric windows
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4986_966976853.1636995106189"
X-Original-Sender: eyalbenn@gmail.com
Precedence: list
Mailing-list: list linux-ntb@googlegroups.com; contact linux-ntb+owners@googlegroups.com
List-ID: <linux-ntb.googlegroups.com>
X-Spam-Checked-In-Group: linux-ntb@googlegroups.com
X-Google-Group-Id: 859317214201
List-Post: <https://groups.google.com/group/linux-ntb/post>, <mailto:linux-ntb@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:linux-ntb+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/linux-ntb
List-Subscribe: <https://groups.google.com/group/linux-ntb/subscribe>, <mailto:linux-ntb+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>

------=_Part_4986_966976853.1636995106189
Content-Type: multipart/alternative; 
	boundary="----=_Part_4987_455102966.1636995106189"

------=_Part_4987_455102966.1636995106189
Content-Type: text/plain; charset="UTF-8"




Hi,

Newbie question: I'm using 2 Xeon(R) Silver 4214 nodes (ntb3 hw) with 
4.19.177 kernel.

I loaded the ntb_tool modules and connected both nodes.

I created 8KB buffer on node A, I mapped a (8KB) window on node B, I wrote 
8KB file to the window and succeed to read the file completely from the 
debugfs on node A (so far, we are good).

I restarted node A buffer content.

Next, I created additional 4KB buffer on node B, then I wrote the same 8KB 
file to the same old 8KB window on node B, but now I read only 4KB on node 
A, the rest 4KB is the initialized data of the buffer.

Below I'll put the exact commands I used.

Is this a knows issue?

Any idea how to solve this issue?

 

Thanks,

Eyal

 

1st stage:

Node A:

1.      insmod ntb/test/ntb_tool.ko

Node B:

1.      insmod ntb/test/ntb_tool.ko 

Node A:

1.      export DBG_DIR=/sys/kernel/debug/ntb_tool/0000:0a:00.0

2.      cat $DBG_DIR/peer0/link

3.      echo Y > $DBG_DIR/link

4.      cat $DBG_DIR/peer0/link

Node B:

1.      export DBG_DIR=/sys/kernel/debug/ntb_tool/0000:0a:00.0

2.      cat $DBG_DIR/peer0/link

3.      echo Y > $DBG_DIR/link

4.      cat $DBG_DIR/peer0/link

Node A:

1.      echo 8192 > $DBG_DIR/peer0/mw_trans0

2.      cat 2.txt > $DBG_DIR/peer0/mw

3.      head -c 8192 $DBG_DIR/peer0/mw0 > 1s_1st_r.txt

Node B:

1.      echo 0x1000000000:8192  > $DBG_DIR/peer0/peer_mw_trans0

2.      cat 5.txt  > $DBG_DIR/peer0/peer_mw0

Node A:

1.      head -c 8192 $DBG_DIR/peer0/mw0 > 1s_2nd_r.txt

 

2nd stage:

Node B:

1.      echo 4096 > $DBG_DIR/peer0/mw_trans0

Node A:

1.      cat 2.txt > $DBG_DIR/peer0/mw0

2.      head -c 8192 $DBG_DIR/peer0/mw0 > 2s_1st_r.txt

Node B:

1.      cat 5.txt  > $DBG_DIR/peer0/peer_mw0

Node A:

1.      head -c 8192 $DBG_DIR/peer0/mw0 > 2s_2nd_r.txt

 

 

 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/24826bb2-da96-4ea8-9b75-6f40425e0368n%40googlegroups.com.

------=_Part_4987_455102966.1636995106189
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p><br>
Hi,</p>

<p>Newbie question: I'm using 2 Xeon(R) Silver 4214 nodes (ntb3 hw)&nbsp;wi=
th 4.19.177 kernel.</p>

<p>I loaded the ntb_tool modules and connected both
nodes.</p>

<p>I created 8KB buffer on node A, I mapped a (8KB)
window on node B, I wrote 8KB file to the window and succeed to read
the file completely from the debugfs on node A (so far, we are good).</p>

<p>I restarted node A buffer content.</p>

<p>Next, I created additional 4KB buffer on node B, then I wrote
the same 8KB file to the same old 8KB window on node B, but now I read only=
 4KB
on node A, the rest 4KB is the initialized data of the buffer.</p>

<p>Below I'll put the exact commands I used.</p>

<p>Is this a knows issue?</p>

<p>Any
idea how to solve this issue?</p>

<p>&nbsp;</p>

<p>Thanks,</p>

<p>Eyal</p>

<p>&nbsp;</p>

<p>1st
stage:</p>

<p>Node
A:</p>

<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span dir=3D"LTR"></span>insmod ntb/test/ntb_tool.ko</p>

<p>Node
B:</p>

<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span dir=3D"LTR"></span>insmod ntb/test/ntb_tool.ko </p>

<p>Node
A:</p>

<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span dir=3D"LTR"></span>export
DBG_DIR=3D/sys/kernel/debug/ntb_tool/0000:0a:00.0</p>

<p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span dir=3D"LTR"></span>cat $DBG_DIR/peer0/link</p>

<p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span dir=3D"LTR"></span>echo Y &gt; $DBG_DIR/link</p>

<p>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span dir=3D"LTR"></span>cat $DBG_DIR/peer0/link</p>

<p>Node
B:</p>

<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span dir=3D"LTR"></span>export
DBG_DIR=3D/sys/kernel/debug/ntb_tool/0000:0a:00.0</p>

<p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span dir=3D"LTR"></span>cat $DBG_DIR/peer0/link</p>

<p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span dir=3D"LTR"></span>echo Y &gt; $DBG_DIR/link</p>

<p>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span dir=3D"LTR"></span>cat $DBG_DIR/peer0/link</p>

<p>Node
A:</p>

<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span dir=3D"LTR"></span>echo
8192 &gt; $DBG_DIR/peer0/mw_trans0</p>

<p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span dir=3D"LTR"></span>cat
2.txt &gt; $DBG_DIR/peer0/mw</p>

<p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span dir=3D"LTR"></span>head
-c 8192 $DBG_DIR/peer0/mw0 &gt; 1s_1st_r.txt</p>

<p>Node
B:</p>

<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span dir=3D"LTR"></span>echo
0x1000000000:8192&nbsp; &gt; $DBG_DIR/peer0/peer_mw_trans0</p>

<p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span dir=3D"LTR"></span>cat
5.txt&nbsp; &gt; $DBG_DIR/peer0/peer_mw0</p>

<p>Node
A:</p>

<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span dir=3D"LTR"></span>head
-c 8192 $DBG_DIR/peer0/mw0 &gt; 1s_2nd_r.txt</p>

<p>&nbsp;</p>

<p>2nd
stage:</p>

<p>Node
B:</p>

<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span dir=3D"LTR"></span>echo
4096 &gt; $DBG_DIR/peer0/mw_trans0</p>

<p>Node
A:</p>

<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span dir=3D"LTR"></span>cat
2.txt &gt; $DBG_DIR/peer0/mw0</p>

<p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span dir=3D"LTR"></span>head
-c 8192 $DBG_DIR/peer0/mw0 &gt; 2s_1st_r.txt</p>

<p>Node
B:</p>

<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span dir=3D"LTR"></span>cat
5.txt&nbsp; &gt; $DBG_DIR/peer0/peer_mw0</p>

<p>Node
A:</p>

<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<span dir=3D"LTR"></span>head
-c 8192 $DBG_DIR/peer0/mw0 &gt; 2s_2nd_r.txt</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/24826bb2-da96-4ea8-9b75-6f40425e0368n%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/linux-ntb/24826bb2-da96-4ea8-9b75-6f40425e0368n%40googlegroups.com</a>.<b=
r />

------=_Part_4987_455102966.1636995106189--

------=_Part_4986_966976853.1636995106189--
