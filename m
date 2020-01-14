Return-Path: <linux-ntb+bncBC23VB5X54DBBDNK7DYAKGQEXKOBDLA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0721313B2E6
	for <lists+linux-ntb@lfdr.de>; Tue, 14 Jan 2020 20:22:54 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id z3sf2899562lfq.22
        for <lists+linux-ntb@lfdr.de>; Tue, 14 Jan 2020 11:22:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579029773; cv=pass;
        d=google.com; s=arc-20160816;
        b=JQ4A0wVzv08X3PtswhTXxe062oa2EREqb+yZhV0NuO1nDUzVAQvmPFIdTPdFeGmdlp
         gfKoeOH0H5opmbTXXc/a0Ag2ud5Tk98an0abADm6VoP0ZKdUZWMyLgOs8C3G6yP7j3f4
         y4dBbnVhSu7Z1UAQr1Kkkde+aKR0LLFpPX09QneuYUqfgw21owRMr6h1sVBA2r9Ya0GW
         lNG6nwgpgFAGYn0kKb9kHbicfD2olwQ2uvp+Jx4Iu8RoGTGFBqWznhLfkm/Mkq+d56l6
         rKaogcaks7/uuBjq3Ta954/HoNnH2uAKDvlmeFiIke55DETqZk0ZRLko6pW08HHns16g
         YCGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=0pP6uYQmmGf3gTttGaxLFyURNLF/UcqQ6eSVPS6+jpc=;
        b=Hu4Ao5JR7EGnLuzmxOOMB0ZEK6qBWPMam3Ilvfw8IraRsBQDrTxpRYcYjNcKJ3mpFr
         l80YXUi+ye00i/GjcHeZK5KjRvq0ukwB5SHKbtrCMCwXt6IxaWaq5kkYrGJsjjGEQ7qH
         7kvWHyDU0Sk7vd700OGG2H3irMiQR/KX20uubNIxjB3taG2iCt33nOB6K7neV9m4D3jt
         8pNQA7ARIvADdEeNPfctXx4Re+TbdmDRY2SpVjwK1D5DCnaNblEFRnuljdBX3Qde2wzG
         scG4UpsnnlwZaO2qXRMV7xcA9AYStF08ORthnCGQeHxffe1rPqkXOO3OMWbBpwa7Adun
         UyNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b="g5wL/jH6";
       spf=pass (google.com: domain of deller@gmx.de designates 212.227.17.22 as permitted sender) smtp.mailfrom=deller@gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0pP6uYQmmGf3gTttGaxLFyURNLF/UcqQ6eSVPS6+jpc=;
        b=br7YusX5Nnv2QipEQjxWv+iKWWc+w3UwyUmqNVZTISucSZbX8P9hac1hCMGkwdq7mb
         SgrbTT/uz4V32XcNHdCjpTxdDq39VHZULh7WhHuKdv6kbLtoV7mnvg/pYx3c2c2U+pOb
         wIgMH9TYopPT1P7mGf86XmRb4PeyfwFyuTFUNiFsypBguiTmzaz77Brq0gFc5lOKuFp0
         gXVkE4q879ryU8GtIUnTXcguzTS2AjTG3KrWVj9zBhLHcQW432eic9qLvGC5No6jQJ9W
         R2IfP5llhjEKQCho74JDIk+tp7I+5xj33gyk71KMi7UhP+Y5QR34odJLK2FlHKWAW716
         GMpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0pP6uYQmmGf3gTttGaxLFyURNLF/UcqQ6eSVPS6+jpc=;
        b=qJ44FxuRTJgzg/p4FqJk0Zmx9an92X3C7FucnBPxYTUPbvSaOo2WL5sEtLmcyichFP
         uf/CtEv/mmPRF4D12od084mJ9DP/tVYtQd/XU/UKf/e3lab0k578zHekPft7ObExzTyf
         ZGzYtAxsxPvcrdm7tEGBAIc1XeOoCtr1yJmKMFzxucJggTkg5W6vwsAUWhzX4vsp+NrU
         cxEDGOVV+EqdvlRBnb8HspmFQ11B6lybKSpLydcga9SglvIZngwcWkjb3azTcC/vVOm4
         pDuIe2Unif4t2ZLVGsK+kYvRM61dtCK6lAB1VSWCgZFJ9opjaV2oIw3GoNj8RjRxy2WQ
         QCTA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVSILFmm7144X8IIgQTZ1CP70/zPgxNxD5zq2XRwbwcQ4ENdW+F
	uEROFERPp/0WQyVqdQmVJhU=
X-Google-Smtp-Source: APXvYqy4ZjDjeLAKy3pOiReaUnMiD8UXwh2rYzx2u+oDoSYOkAm5QNLYl25taPyN+oRPfUOMvf//6w==
X-Received: by 2002:a2e:80cc:: with SMTP id r12mr15426007ljg.154.1579029773628;
        Tue, 14 Jan 2020 11:22:53 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a19:c74d:: with SMTP id x74ls1578900lff.12.gmail; Tue, 14
 Jan 2020 11:22:52 -0800 (PST)
X-Received: by 2002:a19:7b0a:: with SMTP id w10mr2712935lfc.90.1579029772939;
        Tue, 14 Jan 2020 11:22:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579029772; cv=none;
        d=google.com; s=arc-20160816;
        b=xtHJ08PyJYSvVwdLmG5865zBfwy7NG5WE+KcZISq8mMNYwz9o4Fgls1HiwOxir/h/8
         Qto4TUXXG7el2aidjZBTNezGNPBDLxR34Z3AgActPEdjP8zld0U7sfLBQJUO4fAu3ish
         tnFdf8ivcO1Nzgs247pmSx2f5fkI8TneIPKQ2eBNBt6s9tSkY3q86xlOeYh0v0jeK1pD
         I4BuABAT8Xi8b2bjfFrGnzUcFBkas/2REtS/l14IXwT9eHHOV92BeP7TS/8aAx6ez5CZ
         KUeBRahM+ET435D0LwyLwsWrjmNKcWqOqwg+IgjAHfNXnnDXy3jciybw46m6CqQhB05f
         d5Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CwcNvjLQyx8wn557+WkF8h5u4WzE1PqPepJhyIFCG8A=;
        b=EhtjYHTg++dPGSlV0reuaiqAKSHz/bV07acNcbcN8I+s0s+yk3sqpqwvnkysqxL+Nv
         Ug+wqWiyYyyHAlTEBUMCCiHnaIk6/6aB+D8W237NSR9eeGFMgiu1Ri35O/lmBzYoOg3J
         el76k0adSXRzmi2QR/LgO6RHCoeGvnS7lrzC+xd/U1L4ZIMESKLBTFQBLtZ+BGXSBUu9
         bKaPFNL42YZFl6E/KutedYvbh50JKfn68XgAbkrtH5gETlovDUn1DqOggjchmUzVZ2bc
         Y5u1wMHn2ZthrY6sC0D9FgpK3ylnQNP6FWZuAY2J8k3xLAF8zVCHVjoy/k1PijSTnGDZ
         4wAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b="g5wL/jH6";
       spf=pass (google.com: domain of deller@gmx.de designates 212.227.17.22 as permitted sender) smtp.mailfrom=deller@gmx.de
Received: from mout.gmx.net (mout.gmx.net. [212.227.17.22])
        by gmr-mx.google.com with ESMTPS id z16si593399ljk.0.2020.01.14.11.22.52
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jan 2020 11:22:52 -0800 (PST)
Received-SPF: pass (google.com: domain of deller@gmx.de designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ls3530.fritz.box ([92.116.171.104]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MnakX-1jYmom2w3J-00jdli; Tue, 14
 Jan 2020 20:22:49 +0100
Date: Tue, 14 Jan 2020 20:22:47 +0100
From: Helge Deller <deller@gmx.de>
To: Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com,
	Serge Semin <fancer.lancer@gmail.com>
Cc: linux-kernel@vger.kernel.org
Subject: [PATCH] ntb_tool: Fix printk format
Message-ID: <20200114192247.GA30840@ls3530.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Provags-ID: V03:K1:cqTwOqVIQYt3IB2/nbO2/Luf1hWf6voFM2wcMONjNhcxwkzE5lC
 13ZcewEVHh+aQnf2xsKUYsyEgPjdxFHofbLhKgp+KOQ1nsIWZTE/ci9cSDjf6CHCZkRXkXT
 lC4kUszKHhrVK9J1sxM2naso06sxpHuqBcSKXcKc3sFSl27WoHM9BUFmbf9Z+aPyUrWJNVf
 Ho685sHT0PeWOquU6rHPQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wyHYgapCZjo=:roclqpz9XbEmK9svrJhxpv
 L4UiUpakxKhuu8HIUITvo0Kak2YkvO5+b4hIZEHbnRqJZXYEe7EJc1pYLBx5+oDGZ2n7EOg0Y
 koZMOyb4UyhPYhCYM66dlfqsmJBSmCgJR/jwKWvS0gzjv5HVWhMzZOtnmQ+oIBeqWDkNuuhBK
 WCf5enuIwAjCEc5fcD2K64dPHh0brL3wmd9EIkdKbx/wAxrpU6PcwAuPYS1p3OyoEiwSs1/8y
 E5oDYZRDTYdOLdE7rqCXR070dVUutM9Bn8/qFw4/Z/vEEpMSCoUEMH7agVxaE8za0jb2PyLJk
 264IDe/57kFISEEpMJjehlgW7m+LU+kgg9uKBt7ml1RANiw2Vu3BuywAnGZRc6cEUiJ+1Xi+e
 e7ZgCsYUG34yvFHGV02chVWZCUIhAk7RizTYKz8EO61moM7m5RFCm5SLLA5sjz6IP4zZKfxZ9
 v2BxLjRofIIhLytEsBFSgIMpaiWGH0JTqjnxMIVbIDPAIp4zhyortTargGPK7tBhASCmK1UbC
 VnM0TVlHcRaQNV2h9ZWtsupuF4Ae7moIZVs62U/wuLqtODRAV8jv5fob7823ky6pRtTSHMmrE
 9TL8HMC0xYsBpUalEe5nmO+hOvUXxVHGex4MD+P/0Gz+jqGyRZ6GtnTuAY5F2bhgZqW7icg91
 EDoYUE84Wnp2VSLRoLLasu9J7hOoFvI+LpUm9SrGgpZTAHcOoom2iQgifBCQ1LqdD3h4fOHOU
 zz+tuxxbbeQAjG/LQHdj5SUrngEtXg+NI929vX9No5mLqA1pVC8Iezw8Y7ZI0rRCTxGqpdIoK
 ctWa1VjjrvyW1taHa5Z3lOUBp4hVA8oNSGQQta+FP7U5qJe0UXSTqRSGYUJFcEkUhyZBfBNAk
 zSmJRkeLhoGmiu4Uu7tG6u2GBI/6Sj9ymutc0y/E/OF10GJ3my18UMS6GgB5V89pXv/XdNj2m
 qIgW0tmJRproK0vlD6SF43ERKJiWI4/mSbLn7T47BuqVHChrPFxCeINLSXixPtZ7pkYlJSF5Z
 6ic5oI9wBGQC3wGWkhcPRoCpUGVZsQ+F0v8dFbzt9Gn4pYWkwkGZ1ZstkLlGDWmdcRSohB81Z
 YsWUgBcf/d37yqxfS2uCnRtJQZdaTT5/7hOJwKHNLykq8fjJ4ktXluIkIMbN/ixRJjX/guqar
 MFRT7cRYOPPGz+pamRhFs1Mb32UmUgK9E9GD74k49TiOvECBGn2k/qtJNPtL/3t4ebfcDAzMe
 Pcot8cSGsycwPG/6jEeRyHQi4XrbVGCz/K2Id7w==
X-Original-Sender: deller@gmx.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmx.net header.s=badeba3b8450 header.b="g5wL/jH6";       spf=pass
 (google.com: domain of deller@gmx.de designates 212.227.17.22 as permitted
 sender) smtp.mailfrom=deller@gmx.de
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

The correct printk format is %pa or %pap, but not %pa[p].

Signed-off-by: Helge Deller <deller@gmx.de>
Fixes: 7f46c8b3a5523 ("NTB: ntb_tool: Add full multi-port NTB API support")

diff --git a/drivers/ntb/test/ntb_tool.c b/drivers/ntb/test/ntb_tool.c
index d592c0ffbd19..69da758fe64c 100644
--- a/drivers/ntb/test/ntb_tool.c
+++ b/drivers/ntb/test/ntb_tool.c
@@ -678,19 +678,19 @@ static ssize_t tool_mw_trans_read(struct file *filep, char __user *ubuf,
 			 &inmw->dma_base);

 	off += scnprintf(buf + off, buf_size - off,
-			 "Window Size    \t%pa[p]\n",
+			 "Window Size    \t%pap\n",
 			 &inmw->size);

 	off += scnprintf(buf + off, buf_size - off,
-			 "Alignment      \t%pa[p]\n",
+			 "Alignment      \t%pap\n",
 			 &addr_align);

 	off += scnprintf(buf + off, buf_size - off,
-			 "Size Alignment \t%pa[p]\n",
+			 "Size Alignment \t%pap\n",
 			 &size_align);

 	off += scnprintf(buf + off, buf_size - off,
-			 "Size Max       \t%pa[p]\n",
+			 "Size Max       \t%pap\n",
 			 &size_max);

 	ret = simple_read_from_buffer(ubuf, size, offp, buf, off);
@@ -907,16 +907,16 @@ static ssize_t tool_peer_mw_trans_read(struct file *filep, char __user *ubuf,
 			 "Virtual address     \t0x%pK\n", outmw->io_base);

 	off += scnprintf(buf + off, buf_size - off,
-			 "Phys Address        \t%pa[p]\n", &map_base);
+			 "Phys Address        \t%pap\n", &map_base);

 	off += scnprintf(buf + off, buf_size - off,
-			 "Mapping Size        \t%pa[p]\n", &map_size);
+			 "Mapping Size        \t%pap\n", &map_size);

 	off += scnprintf(buf + off, buf_size - off,
 			 "Translation Address \t0x%016llx\n", outmw->tr_base);

 	off += scnprintf(buf + off, buf_size - off,
-			 "Window Size         \t%pa[p]\n", &outmw->size);
+			 "Window Size         \t%pap\n", &outmw->size);

 	ret = simple_read_from_buffer(ubuf, size, offp, buf, off);
 	kfree(buf);

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200114192247.GA30840%40ls3530.fritz.box.
