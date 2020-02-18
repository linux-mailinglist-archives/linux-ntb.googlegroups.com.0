Return-Path: <linux-ntb+bncBCI7LDNNRUPBBTEUVXZAKGQEXVDUKNQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 0090D161EEF
	for <lists+linux-ntb@lfdr.de>; Tue, 18 Feb 2020 03:22:05 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id y24sf6496068ljc.19
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Feb 2020 18:22:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581992524; cv=pass;
        d=google.com; s=arc-20160816;
        b=qbmEILEXyzaTNxhe/jyQfwk6w0yabuwuJd/c8T+OO/godyjzotxCQbWPUZsr5MtUgf
         h8Q2mk/9r/Ps9EftP3mHrSlQzO2XbTatjatwiYMC8LChh0NTjJtEt5sBmt891LvV5gDT
         ms+ZxU8s+cw5akuwyjrrlZ7pJz/quJG5nFfpzW/bVRj/e+T9jSS7u6khX6Jx+WbauFot
         wPqs0l9xB65T6vWzito/xu+aujDVgfDBG5/cbCVsSuk+a6T4rGNf5UL/cYWTc1quW/4k
         cpJGVuNtLS9VWcIDDfsFmxRrdD4ysxNmeqpNVlbfYoY/0VIXcLKZoLvbqwOYWodjCWZf
         Gt4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=KrY4Ck48Uqe6jRl8Dl8rVdCHK597Gc3ftew8lJNqUsg=;
        b=zPrjDlkmgfunK8uVVhD4O//GjRXoIpQjuFerDvaDIovQxSTHn1jLjuBaelBTtJgzsp
         5E3aOYvkYAaOpbR7NBhBTzhL8ENchfXCb032tgTBG2N0x1XEmBeSVljlIoXEUiKJd0lU
         RUtXXuI2I9vBELPfwJpbWkBy5UkKE7DDUJ0C2NzvuipDcaFJAt8EI/fTNuz2xz22D75/
         HWZ44raPKp3uiqdxXF1Lv9UvLiWobFm4mDNkK4N/rsfm3ifEhb4r1EqlC57Jw1VaRCpj
         JEB77UpcqHGkA7aonO21tJzCcIIwq6e8UpBLVb/vClaFVqeYrPNVzz/qz+Zl63CVb4FZ
         kKaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ov84PfYo;
       spf=pass (google.com: domain of mamys745@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=mamys745@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KrY4Ck48Uqe6jRl8Dl8rVdCHK597Gc3ftew8lJNqUsg=;
        b=ZTA5+rLwr3dRNVWtct7U+0WxUCblYtWTBAeNQugSI8cj1JLem0JxgGMxMyZCgzTUOT
         p0wGMW65Z7z8V10MaazL1sIQcIRdLtUWTOZVxm3G04h13Y7tqw/mBLbaMOMacqYVk5ZT
         eeaktRl+pwvEBrzOYDDMiRGeZgqYuGiLnEAaaRIFZQJIO3ONTozIuN9R/n7wOA9LVvOP
         c3CnHZQdlRY1eACvPANVm/5dOr1u1wjnCYi6hIJOmb7P2IwOf1/IlSOGirCXEnFtP8D4
         nLIwaaekbRn3Exp3e2Bx2ikQZzmfRPTcF3xLWVcDeIbAIG1W09u0y2O6wLFp5DutSeJi
         QEfg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KrY4Ck48Uqe6jRl8Dl8rVdCHK597Gc3ftew8lJNqUsg=;
        b=tCZVUFj5w4w06LyJnN8coh198Jca4+xEBcvcc9s+s9Li6CyYMHoReLsaSNSxGXnFkO
         PcpeUcYOlL1SJXW2N2Ts3eS+sub47uGVVp0030pj2MBJFH6fdmTkh0qwFRR1Q9YE98h/
         U0cPW12qrPDekMZa6Wp+JdAnF9zoH4a2dxBvFEjFZVnyQKLXXy8GZAJsnnwZjhQapeIH
         Exnj8WAS/DOpSghMPfUTO1iuP4z8gRZB6DeWysRszOzAqh4vxZDVuO/fusoFtrE3ApNA
         CHcJw257lQErsXl5HWZ0UJaS9lnYacsEopdel6vfildM2FVTvU2n6//OlK96N8bgsElB
         Z1lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KrY4Ck48Uqe6jRl8Dl8rVdCHK597Gc3ftew8lJNqUsg=;
        b=mKYusAev8aoDtXTrGMCFDEXIwNkbPd8cUsO337HFtQU1yh9jVLAr99XijizswJhGT2
         4rAV54iBReXm/kJSpNQuBzqbzJDimESBqqNgH4rVnKNdjtumU1T2GoHJJR+Ok81M7SS7
         I5my1E8GCR503z1PMNLApqHycqVZm2D3QMu7EGcSv/fByOrZWCamldXswhmevA7Sd0mR
         i4clU8XXeLQrdZyMgeDw/gGrpgTJbXxV1rcLHERBuMHDUtED25zxBHwa7MWUgBGoEw7A
         mA94e2Pka4ODAaCmfZYhgIZqqYfJlegKNLBQfj0gYT51SYKE6geghGKth8ttT5Wt9USK
         JSZw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVoKx3REo8vxC2kgmsmKgpgeWNn+BWhG3Axxfxthhd36DWg3Ki8
	Lu6T/oZKxf93iqv3WKde5KI=
X-Google-Smtp-Source: APXvYqyIU5llqDZvkwI7sevO0IIuXJHQcLa2oPcCWbj2E0s18Yw5z9bG7oXFaj11HzQv/BTTq6AhIw==
X-Received: by 2002:a2e:b4e7:: with SMTP id s7mr12026267ljm.58.1581992524600;
        Mon, 17 Feb 2020 18:22:04 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a19:c397:: with SMTP id t145ls1462816lff.10.gmail; Mon, 17
 Feb 2020 18:22:03 -0800 (PST)
X-Received: by 2002:ac2:5478:: with SMTP id e24mr9331667lfn.58.1581992523924;
        Mon, 17 Feb 2020 18:22:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581992523; cv=none;
        d=google.com; s=arc-20160816;
        b=y0/DW5+5Z/kCu7HxCjVjo+8cGyO6ISG/ruQoXY0ZAWnsCG5TMXRfUYlmZOWhOv2qx/
         Qkz08maT0o9glnQwPtCX19j7PZz3842bWc1u076gl2PRHx2Il7aOzfL/kk/fHdSNShLY
         yViZqXVc+tsli2/mSjkJbXHwztGDX7zLPBMik6EHpIhqro2eo+Gb9aB98oxCKRZZRc1S
         IJFw2F4lGbxsTFWK7s5eMJP05+BWh7ugSQ6EgLZzZ65XlbNJE3BXDkZfh//xE7MgNTdT
         FWRI2MzZvMKhQl1xj/eZPN0qMmFQRWrVVhhclmaFlM64XslsXh9ImPg4aJIXyYa7P6AU
         EPOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=wO+7uMM8lDNQCsM99TzKMTSHsnNo6lmHBgGOT3afZWw=;
        b=IFhLDhm8ant+1q69cHwnXimUjhnX0GakiMOfSMPImIusPYr0WKaKfvQvtvP8rt3OPj
         Q5avUdtpo6EQ5VKJRtcXY7msJsCxuT9e+QUlfO50BhSRkYkN02+NH+OQTGBbFq8+K4lX
         0GXgnjFKobiEHSjeJzf/N3g1Kbu+kOmQvSXX418/BGwy+KGIqS2G0zOoLjhiEvQwH1YH
         i5XYTjx04VLbMzVt5HifAQD3Lh/aKq6gqG6yijctMpBddxf4bLAXqLNEfxVmmhiwK9II
         VpNkaD1oVUUj0gFl+26uk2tjqoe/OsJvGU6ixRoRsrm4HKxWBFuNSRK0vVagkR8tp/9V
         nP6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ov84PfYo;
       spf=pass (google.com: domain of mamys745@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=mamys745@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id b10si129382lfi.1.2020.02.17.18.22.03
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2020 18:22:03 -0800 (PST)
Received-SPF: pass (google.com: domain of mamys745@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id w12so22009870wrt.2
        for <linux-ntb@googlegroups.com>; Mon, 17 Feb 2020 18:22:03 -0800 (PST)
X-Received: by 2002:a5d:6b88:: with SMTP id n8mr26252943wrx.288.1581992523470;
 Mon, 17 Feb 2020 18:22:03 -0800 (PST)
MIME-Version: 1.0
From: Marvella Patrick <marvellapatrick1@gmail.com>
Date: Tue, 18 Feb 2020 03:21:52 +0100
Message-ID: <CALCFPMVWBKt0npZah7gmBEgG-0XuYJzznFsz5gfTHyNdP3Eceg@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="000000000000661b32059ed05607"
X-Original-Sender: marvellapatrick1@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ov84PfYo;       spf=pass
 (google.com: domain of mamys745@gmail.com designates 2a00:1450:4864:20::441
 as permitted sender) smtp.mailfrom=mamys745@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000661b32059ed05607
Content-Type: text/plain; charset="UTF-8"

How are you doing today

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CALCFPMVWBKt0npZah7gmBEgG-0XuYJzznFsz5gfTHyNdP3Eceg%40mail.gmail.com.

--000000000000661b32059ed05607
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><span style=3D"=
color:rgb(32,33,36);font-family:Helvetica,sans-serif;font-size:22px;font-st=
yle:normal;font-weight:400;letter-spacing:normal;text-align:start;text-inde=
nt:0px;text-transform:none;white-space:normal;word-spacing:0px;background-c=
olor:rgb(255,255,255);display:inline;float:none">How are you doing today</s=
pan></div></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CALCFPMVWBKt0npZah7gmBEgG-0XuYJzznFsz5gfTHyNdP3Eceg%40=
mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.googl=
e.com/d/msgid/linux-ntb/CALCFPMVWBKt0npZah7gmBEgG-0XuYJzznFsz5gfTHyNdP3Eceg=
%40mail.gmail.com</a>.<br />

--000000000000661b32059ed05607--
