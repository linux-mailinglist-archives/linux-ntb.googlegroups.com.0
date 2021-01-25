Return-Path: <linux-ntb+bncBAABB3GHXKAAMGQEQKHGFPI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 537153023F7
	for <lists+linux-ntb@lfdr.de>; Mon, 25 Jan 2021 11:56:46 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id k26sf18351750ios.9
        for <lists+linux-ntb@lfdr.de>; Mon, 25 Jan 2021 02:56:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611572205; cv=pass;
        d=google.com; s=arc-20160816;
        b=pQNKlyC/7gvCJzudEmZej+1ahhVxrdzMrH2R4FaUzrEl3uqoMeC0gw1+OlXKEE+fyy
         Bq2AgH+ulhd3Rmdo0iO7g7VNEcKdY00HYwJgOykEKd2OfwOtmZFUTJnomwOTP70dPyPA
         jLR0UAlUMwN/QZ0V87MBjABUfrWEG4EsbrhE/B4P/ScD5BEyOKQyYgEsYOhq1j/XzvpH
         AQU/iJNRphPmA2P9T85YiqkVXVQP3mlm5ZeQp08eKMd+xvk5y9QtfZROe1zOqLLc36rf
         plynvbdpZorXEZ6PcMqoeBSAqm1oYlthyT64ckg/JrAaG99E6znNMgHLKboL05G78Iwb
         dNNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:date
         :reply-to:to:subject:from:message-id:mime-version:sender
         :dkim-signature;
        bh=nOphbn3rmjF5ZKR9t8KiACaCbcPQFJGWeRUgr6O3x6Q=;
        b=osDZMv/228Yl0C2rl1Vwq0OJTio4XaxKjibOIrpnWeTMfcH5OmDmKpl0B+BjXOMVRS
         YHHDb7TsAdRUOa7SQj6IZ/dU/mJntfuXpLqKyQ1BYi9xes2lqq9iraKTcELOR1ZM/OPI
         soO/wsJhN7o92o8yWqhB62oyvMC9qkrdbf0tz+lVzK131ouuWvRvQMZ4u+p3dVWKGRWC
         0MRl8L9YzbfCkUBWoC0lz6CUMKhyUue0xCSoA9kxhNQk6SwrdAgfOZNl/gR6kDxo5oNY
         37V82heB7AqRoKgaBN034SpaJkCXtZxZIdhTzDlPCzFAJTQwJUp71EtGaOEcIDDDNZWx
         Vxcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dkim.uni5.net header.s=uni51 header.b=C4T85n8V;
       spf=pass (google.com: domain of geovana@teteraconsultoria.com.br designates 177.185.203.63 as permitted sender) smtp.mailfrom=geovana@teteraconsultoria.com.br
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:message-id:from:subject:to:reply-to:date
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nOphbn3rmjF5ZKR9t8KiACaCbcPQFJGWeRUgr6O3x6Q=;
        b=f9TSEFKRAaqsF1Olgkhh1hqDl93PGbsS6LTYLhHXVnqZxFGFbe1yO/7CRtuWjvU1uV
         /vXcTWK4SaIjvibnJUqoJFO01k5QojEfXY63miSIB/MLuQW/mdDoSFDtgwRQ2/SMJs/x
         gbq9sQFVzqFfj21qkWOkoYxREKOh7/nVNZ6gctCn3FM7VmGviksl/RUspw269NESQJUy
         qd6leciVkRc12YfyZXq8UMo/SPh9lwAWVyjsSIxTXS9WIdunQLwBEoTf9C5n9MQ2JzA+
         QC884I+gzus7vncg36bSLLaIqbQl13bLStZhR1FFbLY/XTjuQGA8JfC8hszGh+XUez/E
         NxmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:message-id:from:subject:to
         :reply-to:date:x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nOphbn3rmjF5ZKR9t8KiACaCbcPQFJGWeRUgr6O3x6Q=;
        b=iUIl4pnCLABk6FudQZ65YS1idYijHWMz7BmWl8XC4Q0AjR/Jir2I/byzPXInqz0lkC
         XCzUKq642xtraJpCw1KedHGvFproLSOxxlylMqELeXsZNoSsHDNiyYVmVaoGCXFNlN2N
         UasicdYeQkCyQkQi39Q20qMNc9y9PkXA7YjSQZc6W0/xqDYALVkB1bD4Sb0cEzZFuwsQ
         NC9IpWZel7HXnUIaTrK8IPM0U3XMb0HWCB4Clp66FXPRY8egPsgW9dZDeK4i4lHbO3hi
         9asznqc0pwsiMZyGP97gp7coCNac7OWnQCCAfwyelOJVS0/kuPhQwispejNRaYORsgbA
         DzPQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531eNQM8tCwaODBu3P0FC3Kogbv1D+jKLyDKSEpnu+PeCoYVGeGG
	RKafvdfmgquBjKonRKbLR34=
X-Google-Smtp-Source: ABdhPJyin52qykyMcDkiM31qNPEyOf9bH/untIKPPNgFjZGYjbbUG0UD3sjUakmWv5ME8wdHo4WEBw==
X-Received: by 2002:a05:6e02:1110:: with SMTP id u16mr93351ilk.73.1611572205223;
        Mon, 25 Jan 2021 02:56:45 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:9f06:: with SMTP id q6ls1726930iot.1.gmail; Mon, 25 Jan
 2021 02:56:44 -0800 (PST)
X-Received: by 2002:a05:6602:3154:: with SMTP id m20mr218829ioy.188.1611572204541;
        Mon, 25 Jan 2021 02:56:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611572204; cv=none;
        d=google.com; s=arc-20160816;
        b=pUu4SqoECfySwj78p7rKoHFel7VoCJbICe5lxAO1nQbfHcR2sLzOvqurqexHEnGdBJ
         EMLBqcPHBJFwU7627r3uctoVJKA9h0XJsSeCC+dousRJbBZqROAHTqVDHO8+Lsze9EE7
         iy/TCt0f6QYTuZ9Hjd23rgm8ssWwiVDw9tD41lu0cc1ydqLRqEgENqK/YfTXJ3QYqwHI
         mVxzZZwXThafT1MneAyWf7ieWVcHHDx/d0rYuXEGiynLAerurbSpxsWBU4zVt2tehZVb
         Q9qBSDPgjwwyTsnGTWhIM5SMrMfCb+DPey6zCkG25bQan83eYmPsXCbAPDVBIZ+WGtVh
         8XQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:reply-to:to:subject:from:dkim-signature:message-id;
        bh=kXDBJXGAC2xxB+n00wTjM0AmSC38/6PNkaZIOYDS6AM=;
        b=rG0gm2bUHyrG/n5m1cBuErUtWmjBERkKUg1h+FsVoG9VXkogG1e+ZDLWv41OX4je65
         Vm43HbRjU4Q5li81L1IN3CNeTBupfXSvPiWvAApifiAAlZua3MYVTMFWyJwwIAQK2Zca
         Fr0Bzcg2OnZzPhlBWcKEKnbdA4p8k43xqDJlw8mZ74Wzd2iIZkMGOxbyDiajimGYQ9hv
         Pu7KFJ4iKEsGzSqo2LXiEtDFKQTAhScbn5nwJ83ju86DmZ38UuOCwl5R8G8dbRrBl0m8
         2vgesZS1HAsGJpEnkP27DyTmBbhcR/O1Y2h+a4WUXSXNqYgWULqVoSAYOVHH3qNhDnia
         mYxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dkim.uni5.net header.s=uni51 header.b=C4T85n8V;
       spf=pass (google.com: domain of geovana@teteraconsultoria.com.br designates 177.185.203.63 as permitted sender) smtp.mailfrom=geovana@teteraconsultoria.com.br
Received: from smtp-sp203-63.hospedagem.net (smtp-sp203-63.hospedagem.net. [177.185.203.63])
        by gmr-mx.google.com with ESMTPS id s10si794745ild.2.2021.01.25.02.56.43
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Jan 2021 02:56:43 -0800 (PST)
Received-SPF: pass (google.com: domain of geovana@teteraconsultoria.com.br designates 177.185.203.63 as permitted sender) client-ip=177.185.203.63;
Message-ID: <600ea3eb.1c69fb81.325ba.5849SMTPIN_ADDED_MISSING@gmr-mx.google.com>
Received: from DESKTOP-PP3A8MN (170-80-135-106.iubtelecom.net.br [170.80.135.106])
	(Authenticated sender: geovana@teteraconsultoria.com.br)
	by smtp-sp203-63.hospedagem.net (Postfix) with ESMTPA id 4D9176001EE9
	for <linux-ntb@googlegroups.com>; Mon, 25 Jan 2021 07:56:33 -0300 (-03)
From: "Geovana Vilela" <geovana@teteraconsultoria.com.br>
Subject: FW: Nota de devolucao 062337524700220430
To: linux-ntb@googlegroups.com
Content-Type: text/html; charset="UTF-8"
Reply-To: geovana@teteraconsultoria.com.br
Date: Mon, 25 Jan 2021 07:56:33 -0300
X-SND-ID: AHCa34u4GtUmNNqg86z62dl03hCjBEeIlRDvK+WaBCfla+9gMzbXcXqv/YYd
	1GNY9WkBOZLUfd64y0ryoiU3NvBIrsH7DYOC5ubD/h4Sd8KntCrKBEqlSXbk
	L4D770RmV6dq7vhJc9e78eym+dyHir0jfxhW1LvpJTzFvxoTmKaS2ga73rmK
	EwcrSODn50COWU9QpybA5DdvfTqtyD1f91JQGFilLHNPiXKx/VhxZaAeiueb
	vpnLR6lI0aWp0XENHf12AyMA/32hl7X4YH0s7QAvrAM6XROqKraU0MB+pM4S
	HQjqQgW5watag0wZTmogb+EN2gmlB7tZLD/eOe4CfXV6u3Qp8EESSzJYqKOK
	udR0ZvNgA0+Rk6qKEFm6cZD3bY4cSMkY95X59ht2U+LSysG4eIL1mYErz3ty
	bVsm0Sgcja5GOrM4n+9W592KSmHTy53K6q2sPgejAg8a8Bi/2pUBNhe6s2DP
	b6+E31U5yIXDPS1/fhYG4hB48oGfNkLR/xLv0RuJZmXInQhItOE4DIDxAf8+
	6rI+DE3grvUxw9Q=
X-Original-Sender: geovana@teteraconsultoria.com.br
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dkim.uni5.net header.s=uni51 header.b=C4T85n8V;       spf=pass
 (google.com: domain of geovana@teteraconsultoria.com.br designates
 177.185.203.63 as permitted sender) smtp.mailfrom=geovana@teteraconsultoria.com.br
Content-Transfer-Encoding: quoted-printable
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

<p>&nbsp;</p>
<p><span style=3D"display: none;">https://portal.fazenda.sp.gov.br/servicos=
/nfp/Emicao/nf/62337524700000002204300</span></p>
<p>&nbsp;</p>
<p><a title=3D"NF Paulistana" href=3D"https://is.gd/hxSOWh?/servicos/nfp/Em=
icao/nf/62337524700000002204300" target=3D"_blank" rel=3D"noopener">https:/=
/portal.fazenda.sp.gov.br/servicos/nfp/Emicao/nf/62337524700000002204300</a=
></p>
<p>&nbsp;</p>
<p>Segue a NFSe emitida de servi&ccedil;os prestados</p>
<p>&nbsp;<br />N&uacute;mero da Nota : 0062337524700022043 <br />CCM: 0180<=
/p>
<p>&nbsp;</p>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/600ea3eb.1c69fb81.325ba.5849SMTPIN_ADDED_MISSING%40gmr=
-mx.google.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.googl=
e.com/d/msgid/linux-ntb/600ea3eb.1c69fb81.325ba.5849SMTPIN_ADDED_MISSING%40=
gmr-mx.google.com</a>.<br />
