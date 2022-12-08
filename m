Return-Path: <linux-ntb+bncBD4JZY7XWUBRBTEWY2OAMGQE2NCDSLA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-f188.google.com (mail-yb1-f188.google.com [209.85.219.188])
	by mail.lfdr.de (Postfix) with ESMTPS id 6232164697D
	for <lists+linux-ntb@lfdr.de>; Thu,  8 Dec 2022 07:59:26 +0100 (CET)
Received: by mail-yb1-f188.google.com with SMTP id n197-20020a25d6ce000000b00702558fba96sf602834ybg.0
        for <lists+linux-ntb@lfdr.de>; Wed, 07 Dec 2022 22:59:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670482765; cv=pass;
        d=google.com; s=arc-20160816;
        b=FQ4ExG/VmY74aFP1moEIDHPd4hXU+UXFawA0q641pgZrYowuy8y44+xC6afFkntHOJ
         ofNB2PNLmC0Y59rbdt9gd2b2GH84zMqXZJYqb//ylL9JWg8lAkXxL52n+aPkokfh/Ybb
         d1o47yZZOHjTo0+3ySP1SrWqokGux4WoXKqgEYUq/de3I8vu6hYOUrEDFjvM3hkPRsi5
         /w4zqj6erFWLa7cGgkmTGuOWlXSjr1YHxPS7yyyNO5gVOzfWUpuOQPQ+pCtMJqSgnTeU
         Ak51M3pklXcAu2GvlIosL3A4Fjngmasa1dLHvKv5g+Jne+l3cl5tZiK/6EvP3HHH47ls
         axCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:reply-to:to:from:subject
         :mime-version:date:sender;
        bh=BycflZOXLc4HEEt72QTaMgtBLgqbtRFZGRcn825ANFA=;
        b=lIl7ReIJVEiMcHWobAJZ/rl4/tLPXhoc82cbvpUb5+AIGuehIBpmiPx0zlsuaIl60o
         NiH4hBEXRITQBeUv8cishbdRTtr64VzsAZNhI07GOyZu5gunJzJSfCJ1Dzjl5R9Rzw+I
         h8Fo7xN97/WAJtTmU763xvzTgKVKRdasiIV6ShxtVugectCq2oZknl7jjtVNO64kb5H/
         Y9SC3XwMN6J7rHSBnVH1Z8SoRTlvKeA0wuhy+JRGxF544+x1aIEIBUfCAPPJgKSO+TUr
         aD0H2e0PXPyUznYxM971aH9shUNbpN+U49Tgx5gtcEdcwYqirlIvtYpqo2Nx5w8nVuMA
         bdPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@email.datadirectglobal.com header.s=krs header.b=BfJpEkQ9;
       spf=pass (google.com: domain of bounce+b60839.ee566e-linux-ntb=googlegroups.com@email.datadirectglobal.com designates 143.55.232.10 as permitted sender) smtp.mailfrom="bounce+b60839.ee566e-linux-ntb=googlegroups.com@email.datadirectglobal.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=datadirectglobal.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id
         :reply-to:to:from:subject:mime-version:date:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BycflZOXLc4HEEt72QTaMgtBLgqbtRFZGRcn825ANFA=;
        b=Dk002ZdZqL+KBCb3757osJtU96ik7hZ198aEB+w/KAkenBGXX4L4poP+L2WvXXBDGI
         NWoAuAxxSfxijNYQj9pB8uF80aribD/ArQXH7OjLLvqNoEyFJMl1uCVTrEOIPreDcNhF
         phNWLDjXBJ8rzafkNWtVcF+Alk8TjJzCs7FGqXPZRCLRy6HGjTc8BsLsa8E/rl6lWcH7
         rwFhZfirTs7otHn/FNfQsyMSrwtDMANl5bkCQFBFyJsOMazUkwO3w0l7fut6y1L5GT4B
         +yV//CL8Ecb5qBPBjIz5xgFX74S5gWbdjK0d+jojPWHcdGSKhiu4nOegX+0qZhJZbYUZ
         k8Tw==
X-Gm-Message-State: ANoB5pmQKPm0Y5MmBR48W4eKbDLAGAsJmw1RRyIU94pEU71bSrSAXJHI
	1fEcs5D7nlN1/vtJtweNi1c=
X-Google-Smtp-Source: AA0mqf4ChAzFumGuajMLloGUudCXLlJU2bbCI66B+cu/x9LbScczIDcF72DVWxwL7EEzPNyKrmSE4Q==
X-Received: by 2002:a25:1644:0:b0:6f9:bd92:c5ec with SMTP id 65-20020a251644000000b006f9bd92c5ecmr37768944ybw.154.1670482765058;
        Wed, 07 Dec 2022 22:59:25 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:db0b:0:b0:6ca:10dd:4459 with SMTP id g11-20020a25db0b000000b006ca10dd4459ls3106295ybf.2.-pod-prod-gmail;
 Wed, 07 Dec 2022 22:59:24 -0800 (PST)
X-Received: by 2002:a25:7a02:0:b0:6f7:952d:b145 with SMTP id v2-20020a257a02000000b006f7952db145mr40932234ybc.604.1670482764025;
        Wed, 07 Dec 2022 22:59:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1670482764; cv=none;
        d=google.com; s=arc-20160816;
        b=eXWt5V7O3RctUltt1XZHISaj/iS0E0R+R19COkdrNMt1XMcT9+OosW3SjbootFSG3p
         NqsZ4/HGVuWIzY+d9wVW5VAnPSHLt+NsBwODu1RCpsG0EFcu44qNqIUBDquF0g8ACUsw
         vPgeclK8obdyP5LSwVX/2rKIYxqBHNAfzYfkVR+HkPBa/kzfeBFS3Yajn8YEUxwdPCgn
         AEgqst+E0rWN1ySocJgjjComLJgTpkOyolz3oeEIYef6qizbo16J4UJ02pbNvDcansrE
         Dba1EtuctdEKAJqKou81Z18xonoyIjVwta29C+70d3+DSRivVdodkqYqzs+bQheQmoRO
         ieSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:reply-to:to:from:subject:mime-version:date:sender
         :dkim-signature;
        bh=7B5NIV2ghecAEPPHVq442VBshIT7TxbarUOHO5xwXq4=;
        b=k/ahofUENHvnBBJwBqpPbeL/DnWmHTcqRytvnAE60rAm+EQo2eMF6roQxxkMImWIL+
         bovdOGcGb9x43A72fDeQDp+jYsPtsZtI/w3aQ3KvPPpJ38fx6mk/xJK4vVlAEwuByeya
         SZvTaSbnSvTJGcA7jEngdzamb+E3c+sGOnZgHLU5UfDtDebIC+Lu9YQ1zfp1u3hXKNb1
         Sbiwjvk5UHGzDasEeRq3WkUB54hWubzQLtvJQr/k0c5NA7sq50xchUxuHRYYjsJC7VAa
         5zI5Qsm79x0ql3mTgIe+8Z09Jhw/UKgYoQNunULl7UgkgAD1kChNF3sYoMWvYmMUG1XU
         dbQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@email.datadirectglobal.com header.s=krs header.b=BfJpEkQ9;
       spf=pass (google.com: domain of bounce+b60839.ee566e-linux-ntb=googlegroups.com@email.datadirectglobal.com designates 143.55.232.10 as permitted sender) smtp.mailfrom="bounce+b60839.ee566e-linux-ntb=googlegroups.com@email.datadirectglobal.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=datadirectglobal.com
Received: from pc232-10.mailgun.net (pc232-10.mailgun.net. [143.55.232.10])
        by gmr-mx.google.com with UTF8SMTPS id r189-20020a2576c6000000b006f06d30ef91si1587140ybc.1.2022.12.07.22.59.21
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Dec 2022 22:59:22 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+b60839.ee566e-linux-ntb=googlegroups.com@email.datadirectglobal.com designates 143.55.232.10 as permitted sender) client-ip=143.55.232.10;
X-Mailgun-Sending-Ip: 143.55.232.10
X-Mailgun-Sid: WyI5ZTAzOCIsImxpbnV4LW50YkBnb29nbGVncm91cHMuY29tIiwiZWU1NjZlIl0=
Received: from <unknown> (<unknown> []) by db5a23e7615f with HTTP id
 63918b487e4958c20c0caf4a; Thu, 08 Dec 2022 06:59:20 GMT
Sender: Nina=datadirectglobal.com@email.datadirectglobal.com
Date: Thu, 08 Dec 2022 06:59:20 +0000
Mime-Version: 1.0
Content-Type: multipart/related; boundary="98220663a3ed476fe95bb9643cc9c8a33569f2adc2c8addf24203bbaa45d"
Subject: Re: Save Much Time on Delivery-Ready to Ship!
From: Nina <Nina@datadirectglobal.com>
To: linux-ntb@googlegroups.com
Reply-To: Nina <Nina@datadirectglobal.com>
X-Mailgun-Variables: {"List-Unsubscribe": "<http//tracking.email.datadirectglobal.com/unsubscribe.php?M=4269230&C=1de4afd70d74fa25227474949fa32361&L=1545&N=60950&U=1220&GX=0NmgjWXjqk>",
 "X-Mailer-LID": "1537,1538,1539,1540,1542,1545", "X-Mailer-RecptId":
 "4269230", "X-Mailer-SID": "60950", "X-Mailer-Sent-By": "1220",
 "X-Mailer-Tongdao": "mailgun"}
Message-Id: <20221208065920.9aa3a290885a1608@email.datadirectglobal.com>
X-Original-Sender: nina@datadirectglobal.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@email.datadirectglobal.com header.s=krs header.b=BfJpEkQ9;
       spf=pass (google.com: domain of bounce+b60839.ee566e-linux-ntb=googlegroups.com@email.datadirectglobal.com
 designates 143.55.232.10 as permitted sender) smtp.mailfrom="bounce+b60839.ee566e-linux-ntb=googlegroups.com@email.datadirectglobal.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=datadirectglobal.com
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

--98220663a3ed476fe95bb9643cc9c8a33569f2adc2c8addf24203bbaa45d
Mime-Version: 1.0
Content-Type: multipart/alternative; boundary="0af81d754136316a40c39609925df9cb1d3e1ed30c7fb5937ba5a3de6909"

--0af81d754136316a40c39609925df9cb1d3e1ed30c7fb5937ba5a3de6909
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
</head>
<body>
<style class=3D"fox_global_style"><!--
div.fox_html_content { line-height: 1.5; }div.fox_html_content { font-size:=
 14px; font-family: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91; color: rgb(0, 0, =
0); line-height: 1.5; }
--></style>
<div>Hello&nbsp;Linux,</div>
<div></div>
<div><span style=3D"font-family: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91, Taho=
ma;">Here&nbsp;is&nbsp;our&nbsp;latest&nbsp;Cisco &amp; Aruba&nbsp;stock&nb=
sp;list&nbsp;with a GREAT price.&nbsp;</span><span style=3D"orphans: 2; lin=
e-height: 1.5; background-color: transparent;">All&nbsp;the&nbsp;following&=
nbsp;products&nbsp;are&nbsp;Brand&nbsp;New&nbsp;Sealed &amp;</span><span st=
yle=3D"font-family: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91, Tahoma; line-heig=
ht: 1.5; background-color: transparent;">&nbsp;ready to ship.</span></div>
<div><span style=3D"font-family: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91, Taho=
ma; line-height: 1.5; background-color: transparent;"><br /></span></div>
<div><span style=3D"orphans: 2;">Fast&nbsp;delivery&nbsp;time&nbsp;and&nbsp=
;Flexible&nbsp;suitable&nbsp;shipping&nbsp;terms.</span></div>
<div><span style=3D"font-family: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91, Taho=
ma;"><br /></span></div>
<div>Don't&nbsp;hesitate&nbsp;to&nbsp;contact&nbsp;me&nbsp;at&nbsp;nina@dat=
adirectglobal.com<span style=3D"color: #333333; font-family: Arial, Helveti=
ca; font-size: 16px; line-height: 27.2px; orphans: 2; widows: 2; background=
-color: #f8f8f8;">&nbsp;</span>if&nbsp;you&nbsp;are&nbsp;interested&nbsp;in=
 Cisco &amp; Aruba.</div>
<div></div>
<div><google-sheets-html-origin>
<table xmlns=3D"http://email.email.datadirectglobal.com/c/eJx1UMtuwjAQ_Jrkl=
mi9fsUHH1paKiTg0IfK1YkdkxISGhxB_74mtKKXSpZmdrSzO95NtjJN64bs2VWHsLCaoVBIIXWa=
CAmsQCkgtdo5LoRLG42ASBAKEFwh5MoYalBBUXBDBBQJA7ePE3NrgrHN4Krg2740bV71-3SrVVm=
Bq60opIO6UtwUzhrFoCRcVqVy6eY30IvrQnb_pQkipK3ehnBI6F2C8_hOp1N-onk_-FgQpVSE8z=
bs25v9te-8Nb2-hPFjlw66bbrxnHWhjBl93_vW-aEfD8cp2bI5huytO47lsRqa0umEzqaV074wm=
GrXdD7__2-xa7zZ88M2pp2vEvrwc9AExSxWxDpmaivBSlYb5IiSSaaYqg1FKkhsW17aOOORriMV=
oPjF_XaR4y0ifdpEDuu9_3jffHzuEvr452yLBz1ZbtIySoRTmeAsQnEFNQGDK-AV-DdDd5tI" c=
ellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"table-=
layout: fixed; font-size: 10pt; font-family: Arial; width: 0px; border-coll=
apse: collapse; border: none;"><colgroup><col width=3D"134" /><col width=3D=
"643" /><col width=3D"69" /><col width=3D"69" /><col width=3D"117" /></colg=
roup>
<tbody>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #26a69a; font-weight: bold; text-align: center;" da=
ta-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Part Number&quot;}"=
>Part Number</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #26a69a; font-weight: bold; text-align: center;" da=
ta-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Description&quot;}"=
>Description</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #26a69a; font-weight: bold; text-align: center;" da=
ta-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Stock Qty&quot;}">S=
tock Qty</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #26a69a; font-weight: bold; text-align: center;" da=
ta-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Unit Price&quot;}">=
Unit Price</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #26a69a; font-weight: bold; text-align: center;" da=
ta-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Remark&quot;}">Rema=
rk</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;JL075A&quot;}">JL075A</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba 3810M 16SFP+=
 2-slot Swch&quot;}">Aruba 3810M 16SFP+ 2-slot Swch</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:2}">=
2</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;$5,520.00&quot;}">$5,520.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;JL724A&quot;}">JL724A</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Aruba 6200F 24G 4SFP+ Switch&quot;}">Aruba 6200F 24G 4SFP+=
 Switch</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:3}">3</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;$1,944.00&quot;}">$1,944.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;JL322A&quot;}">JL322A</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba 2930M 48G Po=
E+ 1-slot Switch.&quot;}">Aruba 2930M 48G PoE+ 1-slot Switch.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:7}">=
7</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;$3,600.00&quot;}">$3,600.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;JL676A&quot;}">JL676A</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Aruba 6100 48G 4SFP+ Switch&quot;}">Aruba 6100 48G 4SFP+ S=
witch</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:3}">3</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;$1,420.00&quot;}">$1,420.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;JL678A&quot;}">JL678A</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba 6100 24G 4SF=
P+ Switch&quot;}">Aruba 6100 24G 4SFP+ Switch</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:30}"=
>30</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;$1,200.00&quot;}">$1,200.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;JL253A&quot;}">JL253A</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Aruba 2930F 24G 4SFP+ Swch.&quot;}">Aruba 2930F 24G 4SFP+ =
Swch.</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:5}">5</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;$2,200.00&quot;}">$2,200.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;JL685A&quot;}">JL685A</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba Instant On 1=
930 48G 4SFP/SFP+ Switch&quot;}">Aruba Instant On 1930 48G 4SFP/SFP+ Switch=
</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:10}"=
>10</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;$695.00&quot;}">$695.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;JL679A&quot;}">JL679A</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Aruba 6100 12G Class4 PoE 2G/2SFP+ 139W Switch&quot;}">Aru=
ba 6100 12G Class4 PoE 2G/2SFP+ 139W Switch</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:20}">20</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;$900.00&quot;}">$900.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;JL319A&quot;}">JL319A</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba 2930M 24G 1-=
slot Switch.&quot;}">Aruba 2930M 24G 1-slot Switch.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:3}">=
3</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;$1,521.00&quot;}">$1,521.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;JL320A&quot;}">JL320A</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Aruba 2930M 24G PoE+ 1-slot Switch&quot;}">Aruba 2930M 24G=
 PoE+ 1-slot Switch</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:40}">40</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;$1,710.00&quot;}">$1,710.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;R8N86A&quot;}">R8N86A</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba 6000 48G 4SF=
P Switch&quot;}">Aruba 6000 48G 4SFP Switch</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:35}"=
>35</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;$1,050.00&quot;}">$1,050.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;R8N87A&quot;}">R8N87A</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Aruba 6000 24G Class4 PoE 4SFP 370W Switch&quot;}">Aruba 6=
000 24G Class4 PoE 4SFP 370W Switch</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:13}">13</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;$1,150.00&quot;}">$1,150.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;R8N88A&quot;}">R8N88A</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba 6000 24G 4SF=
P Switch&quot;}">Aruba 6000 24G 4SFP Switch</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:80}"=
>80</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;$695.00&quot;}">$695.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;R7J27A&quot;}">R7J27A</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Aruba AP-635 (RW) Tri-radio 2x2:2 802.11ax Wi-Fi 6E Intern=
al Antennas Campus AP&quot;}">Aruba AP-635 (RW) Tri-radio 2x2:2 802.11ax Wi=
-Fi 6E Internal Antennas Campus AP</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:80}">80</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;$500.00&quot;}">$500.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;JZ320A&quot;}">JZ320A</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba AP-303 (RW) =
Unified AP.&quot;}">Aruba AP-303 (RW) Unified AP.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:23}"=
>23</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;$165.00&quot;}">$165.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;R2H28A&quot;}">R2H28A</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Aruba AP-505 (RW) Unified AP&quot;}">Aruba AP-505 (RW) Uni=
fied AP</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:255}">255</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;$230.00&quot;}">$230.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Q9H62A&quot;}">Q9H62A</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba AP-515 (RW) =
Unified AP.&quot;}">Aruba AP-515 (RW) Unified AP.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:375}=
">375</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;$455.00&quot;}">$455.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;JZ336A&quot;}">JZ336A</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Aruba AP-535 (RW) Unified AP.&quot;}">Aruba AP-535 (RW) Un=
ified AP.</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:67}">67</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;$578.00&quot;}">$578.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;C9200-STACK-KIT=3D&quot;}">C9200-STACK-KIT=3D</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Cisco Catalyst 920=
0 Stack Module.&quot;}">Cisco Catalyst 9200 Stack Module.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:19}"=
>19</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:647.=
5}" data-sheets-numberformat=3D"{&quot;1&quot;:4,&quot;2&quot;:&quot;[$$]#,=
##0.00&quot;,&quot;3&quot;:1}">$647.50</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Cisco New&quot;}">Cisco New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; color: #434343; text-align: center;" data-=
sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;C1000-24T-4G-L&quot;}"=
>C1000-24T-4G-L</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Catalyst 1000 24port GE, 4x1G SFP.&quot;}">Catalyst 1000 2=
4port GE, 4x1G SFP.</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:66}">66</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:577.5}" data-sheets-numberformat=3D"{&quot;1=
&quot;:4,&quot;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;:1}">$577.50</=
td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Cisco New&quot;}">Cisco New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; co=
lor: #434343; text-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&q=
uot;2&quot;:&quot;C9300-48P-E&quot;}">C9300-48P-E</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Catalyst 9300 48-p=
ort PoE+, Network Essentials.&quot;}">Catalyst 9300 48-port PoE+, Network E=
ssentials.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:18}"=
>18</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:3825=
}" data-sheets-numberformat=3D"{&quot;1&quot;:4,&quot;2&quot;:&quot;[$$]#,#=
#0.00&quot;,&quot;3&quot;:1}">$3,825.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Cisco New&quot;}">Cisco New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; color: #434343; text-align: center; background-color: =
#ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;C1000-2=
4T-4X-L&quot;}">C1000-24T-4X-L</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Catalyst 1000 24 port GE, 4x10G SFP.&quot;}">Catalyst 1000=
 24 port GE, 4x10G SFP.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:54}">54</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:954}" data-sheets-numberforma=
t=3D"{&quot;1&quot;:4,&quot;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;:=
1}">$954.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Cisco New&quot;}">Cisco New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; wo=
rd-wrap: break-word; color: #434343; text-align: center;" data-sheets-value=
=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;C9200L-48P-4G-E&quot;}">C9200L-48P=
-4G-E</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Catalyst 9200L 48-=
port PoE+, 4 x 1G, Network Essentials.&quot;}">Catalyst 9200L 48-port PoE+,=
 4 x 1G, Network Essentials.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center;" data-sheets-value=3D"{&quot;1&quo=
t;:3,&quot;3&quot;:41}">41</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center;" data-sheets-value=3D"{&quot;1&quo=
t;:3,&quot;3&quot;:3150}" data-sheets-numberformat=3D"{&quot;1&quot;:4,&quo=
t;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;:1}">$3,150.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Cisco New&quot;}">Cisco New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; wo=
rd-wrap: break-word; color: #434343; text-align: center; background-color: =
#ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;C9200L-=
48P-4X-E&quot;}">C9200L-48P-4X-E</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Catalyst 9200L 48-port PoE+, 4 x 10G, Network Essentials.&=
quot;}">Catalyst 9200L 48-port PoE+, 4 x 10G, Network Essentials.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:8}">8</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:3912}" data-sheets-numberform=
at=3D"{&quot;1&quot;:4,&quot;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;=
:1}">$3,912.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Cisco New&quot;}">Cisco New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; wo=
rd-wrap: break-word; color: #434343; text-align: center;" data-sheets-value=
=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;C9200L-STACK-KIT=3D&quot;}">C9200L=
-STACK-KIT=3D</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Cisco Catalyst 920=
0L Stack Module.&quot;}">Cisco Catalyst 9200L Stack Module.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center;" data-sheets-value=3D"{&quot;1&quo=
t;:3,&quot;3&quot;:29}">29</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center;" data-sheets-value=3D"{&quot;1&quo=
t;:3,&quot;3&quot;:585}" data-sheets-numberformat=3D"{&quot;1&quot;:4,&quot=
;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;:1}">$585.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Cisco New&quot;}">Cisco New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; wo=
rd-wrap: break-word; color: #434343; text-align: center; background-color: =
#ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;C9300-2=
4T-E&quot;}">C9300-24T-E</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Catalyst 9300 24-port data only, Network Essentials.&quot;=
}">Catalyst 9300 24-port data only, Network Essentials.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:33}">33</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:2278}" data-sheets-numberform=
at=3D"{&quot;1&quot;:4,&quot;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;=
:1}">$2,278.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Cisco New&quot;}">Cisco New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; co=
lor: #434343; text-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&q=
uot;2&quot;:&quot;ISR4221/K9&quot;}">ISR4221/K9</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Cisco ISR 4221 (2G=
E,2NIM,8G FLASH,4G DRAM,IPB).&quot;}">Cisco ISR 4221 (2GE,2NIM,8G FLASH,4G =
DRAM,IPB).</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:12}"=
>12</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:795}=
" data-sheets-numberformat=3D"{&quot;1&quot;:4,&quot;2&quot;:&quot;[$$]#,##=
0.00&quot;,&quot;3&quot;:1}">$795.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Cisco New&quot;}">Cisco New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; color: #434343; text-align: center;" data-=
sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;C1000-48T-4G-L&quot;}"=
>C1000-48T-4G-L</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Catalyst 1000 48port GE, 4x1G SFP.&quot;}">Catalyst 1000 4=
8port GE, 4x1G SFP.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:62}">62</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:1140}" data-sheets-numberform=
at=3D"{&quot;1&quot;:4,&quot;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;=
:1}">$1,140.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Cisco New&quot;}">Cisco New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; co=
lor: #434343; text-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&q=
uot;2&quot;:&quot;FG-200F&quot;}">FG-200F</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;18 x GE RJ45 (incl=
uding 1 x MGMT port, 1 X HA port, 16 x switch ports), \n8 x GE SFP slots, 4=
 x 10GE SFP+ slots, NP6XLite and CP9 hardware accelerated..&quot;}">18 x GE=
 RJ45 (including 1 x MGMT port, 1 X HA port, 16 x switch ports), <br />8 x =
GE SFP slots, 4 x 10GE SFP+ slots, NP6XLite and CP9 hardware accelerated..<=
/td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center;" data-sheets-value=3D"{&quot;1&quo=
t;:3,&quot;3&quot;:30}">30</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center;" data-sheets-value=3D"{&quot;1&quo=
t;:3,&quot;3&quot;:3894}" data-sheets-numberformat=3D"{&quot;1&quot;:4,&quo=
t;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;:1}">$3,894.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Fortinet New&quot;}">Fortinet New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; color: #434343; text-align: center;" data-=
sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;FG-201F&quot;}">FG-201=
F</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; wrap-strategy: 3; white-space: clip;" data=
-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;18 x GE RJ45 (includi=
ng 1 x MGMT port, 1 X HA port, 16 x switch ports), 8 x GE SFP slots, \n4 x =
10GE SFP+ slots, NP6XLite and CP9 hardware accelerated, 480GB onboard SSD s=
torage..\n&quot;}">18 x GE RJ45 (including 1 x MGMT port, 1 X HA port, 16 x=
 switch ports), 8 x GE SFP slots, <br />4 x 10GE SFP+ slots, NP6XLite and C=
P9 hardware accelerated, 480GB onboard SSD storage..</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:10}">10</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:4900}" data-sheets-numberformat=3D"{&quot;1&=
quot;:4,&quot;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;:1}">$4,900.00<=
/td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Fortinet New&quot;}">Fortinet New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; co=
lor: #434343; text-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&q=
uot;2&quot;:&quot;FG-101F&quot;}">FG-101F</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;22 x GE RJ45 ports=
 (including 2 x WAN ports, 1 x DMZ port, 1 x Mgmt port, 2 x HA ports, \n16 =
x switch ports with 4 SFP port shared media), \n4 SFP ports, 2x 10G SFP+ Fo=
rtiLinks, 480GB onboard storage, dual power supplies redundancy..&quot;}">2=
2 x GE RJ45 ports (including 2 x WAN ports, 1 x DMZ port, 1 x Mgmt port, 2 =
x HA ports, <br />16 x switch ports with 4 SFP port shared media), <br />4 =
SFP ports, 2x 10G SFP+ FortiLinks, 480GB onboard storage, dual power suppli=
es redundancy..</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:10}"=
>10</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center;" data-sheets-value=3D"{&quot;1&quo=
t;:3,&quot;3&quot;:3413}" data-sheets-numberformat=3D"{&quot;1&quot;:4,&quo=
t;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;:1}">$3,413.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Fortinet New&quot;}">Fortinet New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; color: #434343; text-align: center;" data-=
sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;FG-601E&quot;}">FG-601=
E</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;2 x 10GE SFP+ slots, 10 x GE RJ45 ports (including 1 x MGM=
T port, 1 X HA port, \n8 x switch ports), 8 x GE SFP slots, SPU NP6 and CP9=
 hardware accelerated\n, 2x 240GB onboard SSD storage.&quot;}">2 x 10GE SFP=
+ slots, 10 x GE RJ45 ports (including 1 x MGMT port, 1 X HA port, <br />8 =
x switch ports), 8 x GE SFP slots, SPU NP6 and CP9 hardware accelerated<br =
/>, 2x 240GB onboard SSD storage.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:6}">6</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:7455}" data-sheets-numberform=
at=3D"{&quot;1&quot;:4,&quot;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;=
:1}">$7,455.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Fortinet New&quot;}">Fortinet New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; co=
lor: #434343; text-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&q=
uot;2&quot;:&quot;FG-600E&quot;}">FG-600E</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;2 x 10GE SFP+ slot=
s, 10 x GE RJ45 ports (including 1 x MGMT port, 1 X HA port, 8 x switch por=
ts), \n8 x GE SFP slots, SPU NP6 and CP9 hardware accelerated.&quot;}">2 x =
10GE SFP+ slots, 10 x GE RJ45 ports (including 1 x MGMT port, 1 X HA port, =
8 x switch ports), <br />8 x GE SFP slots, SPU NP6 and CP9 hardware acceler=
ated.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center;" data-sheets-value=3D"{&quot;1&quo=
t;:3,&quot;3&quot;:10}">10</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:6825=
}" data-sheets-numberformat=3D"{&quot;1&quot;:4,&quot;2&quot;:&quot;[$$]#,#=
#0.00&quot;,&quot;3&quot;:1}">$6,825.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Fortinet New&quot;}">Fortinet New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; wo=
rd-wrap: break-word; color: #434343; text-align: center; background-color: =
#ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;FAP-221=
E-C&quot;}">FAP-221E-C</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; wrap-strategy: 3; white-space: clip;" data=
-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Indoor Wireless AP - =
Dual radio (802.11 b/g/n and 802.11 a/n/ac Wave 2, 2x2 MU-MIMO), internal a=
ntennas, \n1 x 10/100/1000 RJ45 port, BT / BLE. Ceiling/wall mount kit incl=
uded.For power order:\n 802.3af PoE injector GPI-115 or AC adapter SP-FAP20=
0-PA. Region Code C.&quot;}">Indoor Wireless AP - Dual radio (802.11 b/g/n =
and 802.11 a/n/ac Wave 2, 2x2 MU-MIMO), internal antennas, <br />1 x 10/100=
/1000 RJ45 port, BT / BLE. Ceiling/wall mount kit included.For power order:=
<br /> 802.3af PoE injector GPI-115 or AC adapter SP-FAP200-PA. Region Code=
 C.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:500}">500</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:272}" data-sheets-numberforma=
t=3D"{&quot;1&quot;:4,&quot;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;:=
1}">$272.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Fortinet New&quot;}">Fortinet New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; co=
lor: #434343; text-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&q=
uot;2&quot;:&quot;FAP-231F-C&quot;}">FAP-231F-C</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Indoor Wireless AP=
 - Tri radio (802.11 b/g/n/ax 2x2 MU-MIMO, 802.11 a/n/ac/ax 2x2 MU-MIMO and=
 \n1x 802.11 a/b/g/n/ac Wave 2, 1x1 ), internal antennas, 2x 10/100/1000 RJ=
45 port, BT/BLE, 1x Type A USB, \n1x RS-232 RJ45 Serial Port. Ceiling/wall =
mount kit included.For power order: 802.3at PoE injector GPI-130 \nor AC ad=
apter SP-FAP250-PA-10. Region Code C.\n\n&quot;}">Indoor Wireless AP - Tri =
radio (802.11 b/g/n/ax 2x2 MU-MIMO, 802.11 a/n/ac/ax 2x2 MU-MIMO and <br />=
1x 802.11 a/b/g/n/ac Wave 2, 1x1 ), internal antennas, 2x 10/100/1000 RJ45 =
port, BT/BLE, 1x Type A USB, <br />1x RS-232 RJ45 Serial Port. Ceiling/wall=
 mount kit included.For power order: 802.3at PoE injector GPI-130 <br />or =
AC adapter SP-FAP250-PA-10. Region Code C.<br /><br /></td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:200}=
">200</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center;" data-sheets-value=3D"{&quot;1&quo=
t;:3,&quot;3&quot;:420}" data-sheets-numberformat=3D"{&quot;1&quot;:4,&quot=
;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;:1}">$420.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Fortinet New&quot;}">Fortinet New</td>
</tr>
</tbody>
</table>
</google-sheets-html-origin></div>
<div></div>
<div>
<table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" style=3D"font-famil=
y: 'Microsoft YaHei'; orphans: 2; widows: 2;">
<tbody>
<tr>
<td style=3D"padding: 0px 1px 0px 0px;">
<table cellpadding=3D"0" cellspacing=3D"0" border=3D"0">
<tbody>
<tr>
<td style=3D"padding: 0px 1px 0px 0px;">
<table cellpadding=3D"0" cellspacing=3D"0" border=3D"0">
<tbody>
<tr>
<td style=3D"padding: 0px 20px 0px 0px; vertical-align: top; font-family: A=
rial, Helvetica, sans-serif; font-size: 13px; line-height: 15px; white-spac=
e: nowrap;">
<p style=3D"margin: 0px 1px; font-weight: bold;">Nina Zhang</p>
<p style=3D"margin: 0px 1px; line-height: 16px; color: #888888;">Sales Mana=
ger</p>
<p style=3D"margin: 0px 1px; line-height: 16px; color: #888888;">Sales Depa=
rtment</p>
<p style=3D"margin: 0px 1px; line-height: 16px; color: #888888;">DATADIRECT=
 GLOBAL LIMITED</p>
</td>
<td width=3D"10" style=3D"padding: 0px 1px 0px 0px;"></td>
<td style=3D"padding: 0px 1px 0px 0px; vertical-align: top;">
<table cellpadding=3D"0" cellspacing=3D"0" border=3D"0">
<tbody>
<tr>
<td valign=3D"middle" style=3D"padding: 1px 5px 1px 0px; vertical-align: mi=
ddle;">
<p style=3D"margin: 0px 1px;"><img src=3D"cid:95715f1d0ddd0e982c17a685e469d=
acd.png" alt=3D"" width=3D"15" height=3D"15" norescale=3D"true" style=3D"ma=
x-width: 15px; display: block; border: 0px;" /></p>
</td>
<td style=3D"line-height: 15px; padding: 1px 0px; vertical-align: middle;">
<p style=3D"margin: 0px 1px;">live:nina_6104</p>
</td>
</tr>
<tr>
<td valign=3D"middle" style=3D"padding: 1px 5px 1px 0px; vertical-align: mi=
ddle;">
<p style=3D"margin: 0px 1px;"><img src=3D"cid:46278429b8789746f43ac394c6a80=
eb8.png" alt=3D"" width=3D"15" height=3D"15" norescale=3D"true" class=3D"im=
age_zoomin" style=3D"cursor: url('../../Common/FoxUI/Images/New/Icon/zoomin=
.cur'), pointer; max-width: 15px; display: block; border: 0px;" /></p>
</td>
<td style=3D"line-height: 15px; padding: 1px 0px; vertical-align: middle;">
<p style=3D"margin: 0px 1px;"><a href=3D"tel:+8618217340100" target=3D"_bla=
nk" style=3D"text-decoration: none !important; font-family: Arial, Helvetic=
a, sans-serif; font-size: 13px; white-space: nowrap; color: #888888;">+8615=
850193304 (whatsapp)</a></p>
</td>
</tr>
<tr>
<td valign=3D"middle" style=3D"padding: 1px 5px 1px 0px; vertical-align: mi=
ddle;">
<p style=3D"margin: 0px 1px;"><img src=3D"cid:85b9c556ecc80dde80f62c6140a8c=
f77.png" alt=3D"" width=3D"15" height=3D"15" norescale=3D"true" style=3D"ma=
x-width: 15px; display: block; border: 0px;" /></p>
</td>
<td style=3D"line-height: 15px; padding: 1px 0px; vertical-align: middle;">
<p style=3D"margin: 0px 1px;"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif; font-size: 13px; white-space: nowrap; color: #888888;">Hong Ko=
ng | Houston | Shanghai | Suzhou</span></p>
</td>
</tr>
<tr>
<td valign=3D"middle" style=3D"padding: 1px 5px 1px 0px; vertical-align: mi=
ddle;">
<p style=3D"margin: 0px 1px;"><img src=3D"cid:0f51b1d4c7b9368d786515ed91a00=
ac9.png" alt=3D"" width=3D"15" height=3D"15" norescale=3D"true" style=3D"ma=
x-width: 15px; display: block; border: 0px;" /></p>
</td>
<td style=3D"line-height: 15px; padding: 1px 0px; vertical-align: middle;">
<p style=3D"margin: 0px 1px;"><a href=3D"http://email.email.datadirectgloba=
l.com/c/eJx1UMlugzAU_Bq4gZ6fF_DBhzZpqkhJDl1UrgYch4QABaO0f19DWqWHVrI04_FbxpN=
FW13Vpo-eTNG5dakYCokUQqOISIClmAgIS2UMF8KElUJAJAgpCC4RYqk11SghTbkmAtKAgTn7iX=
GpnS6r3hTO1m2u67hoz-FBac15wVMtgSIHw3KQMhdADONUFpyH2Y-hZ9O46P5TEUQIa3VwrgvoX=
YArfy6Xy58L_NNtwEvb2FK3arJjxybsVV0140fUuNy7tG1ra2P7duyG2dumGlz02gxjPhR9lRsV=
0MW8dN7oel2cqsbG___OV4239rg7eL-rbUCX35EGKBb-RkrD9L5MoEzYXiNHTFjCJJN7TZEK4ss=
2Uxln3NOdpwIkn7pfJ9mn4elj5jnszvb4lh3fTwF9-BXceqnmlpu08RLhNAlw4SG9gpyBwRXwCv=
wLZ9ucEg" target=3D"_blank" style=3D"text-decoration: none !important; font=
-family: Arial, Helvetica, sans-serif; font-size: 13px; white-space: nowrap=
; color: #007bff; font-weight: bold;">datadirectglobal.com</a></p>
</td>
</tr>
</tbody>
</table>
</td>
<td width=3D"15" style=3D"padding: 0px 1px 0px 0px;"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=3D"padding: 0px 1px 0px 0px;">
<table cellpadding=3D"0" cellspacing=3D"0" border=3D"0">
<tbody>
<tr>
<td width=3D"27" style=3D"font-size: 0px; line-height: 0px; padding: 13px 1=
px 0px 0px;">
<p style=3D"margin: 0px 1px;"><a href=3D"http://email.email.datadirectgloba=
l.com/c/eJx1UE1vozAU_DXmBnp-_sIHH9r0Q5XSHrZbba4GG0JDMAWjdP99TbKr9FLJ0oxHb8b=
jt8ufbdf7Kf_l6zE-OcNRamSQeUOlAl6ikpA5472Q0medQUCkCCVIoREKbS2zqKEshaUSSsLBH1=
Ni4Wy0rpt8Hds-VLYv6nDM9sYxcJBCNTBZK1RrKqfcckkbISTNdv8Lvfoh5rd_DUWErDf7GMeZs=
BuCD-mcTqeisbWvQjisyUkafDyF6eA_lm48Jm-SrmG_w9A6G8xarV2GbDJ9Nyyf-RCr1LgNoe19=
O4VlnM89t90c87dhXqq5nrrKG8I2a4HL43Gy9aEb2uLnn6ap5Wovxv1I2MMzYXf_1ktQbtKNOs9=
t4xQ4xRuLAlFxxTXXjWXIJE1j23VMcJHoS6IStFjdb6ucNpPo4y5xeDm273927x8Hwu6_LfHpzp=
wtV2mbJCqYIrhJUF5An4HDBfAC4gtXHaAu" target=3D"_blank" style=3D"text-decorat=
ion: none !important;"><img src=3D"cid:e9d2074b3fe3b7401cfe968b8077b2f7.png=
" alt=3D"" width=3D"27" height=3D"27" norescale=3D"true" style=3D"max-width=
: 27px; display: block; border: 0px;" /></a></p>
</td>
<td width=3D"3" style=3D"padding: 0px 0px 1px;"></td>
<td width=3D"27" style=3D"font-size: 0px; line-height: 0px; padding: 13px 1=
px 0px 0px;">
<p style=3D"margin: 0px 1px;"><a href=3D"http://email.email.datadirectgloba=
l.com/c/eJx1UMtOwzAQ_Brnlshevw8-QEsRUuHAQ_TqxG6aNk2C4wj4e5wWKBckSzO7mp0d7ya=
_t03rQ_7oqyHeOcNAaKA484YIiZkCKXDmjPdcCJ81BjAAAayw4Bpwoa2lFjRWilsisEIM-2NyLJ=
yN1jXBV7Fu-9K2RdUfs52hygmiSiWTbqup1ABWgMSCEg-gqmzzE-jJdzG__jQEAGet2cU4jIheI=
VilF9-bGH2YTVO19yF8_i4kF4_nvqud7c2cqJ66LJi26aaPvItlClr3fd36OvTTMJ7irZsx5i_d=
OJVjFZrSG0QX897vncFWh6ari_8_mFTTZbwYdgOiq3tEl99XRSAWqSLOM7t1EjvJthY4gGSSaaa=
3lgIVJMnWs4wznuhDogJrPk-_zO10kERvN4njh2O9f93s3w6I3vy53d3SnEYurXVqEU4lgkUCdQ=
Z9AobPAGfgX2cLnSw" target=3D"_blank" style=3D"text-decoration: none !import=
ant;"><img src=3D"cid:21408cee2de3f3b1071e63254df5bb00.png" alt=3D"" width=
=3D"27" height=3D"27" norescale=3D"true" style=3D"max-width: 27px; display:=
 block; border: 0px;" /></a></p>
</td>
<td width=3D"3" style=3D"padding: 0px 0px 1px;"></td>
<td width=3D"27" style=3D"font-size: 0px; line-height: 0px; padding: 13px 1=
px 0px 0px;">
<p style=3D"margin: 0px 1px;"><a href=3D"http://email.email.datadirectgloba=
l.com/c/eJx1UE1vnDAQ_TXmBhrGH8DBh3TTVJE2OTSNuleDDessaygYbfPvMyytNpdIlt_zeOb=
NmzmkT8b3bkp_umaMj1YLVBVySJzOVQGixEJBYrVzUimXeI2AmCOUoGSFkFXGcIMVlKU0uYKSCX=
BnUsysicb6yTWx64fa9FkznJOjxrqwqnYcOGBbNrxubUstpBKmtK42yeG_oRcXYvrtXeeIkPT6G=
OM4M37H8IHO5XLJeh9OzvqwKlOI7tGEd2K31unWO-392Udn6e-m_2sInTWDXt12S0gmTYLL3zTE=
mobohqHrXTcNyzhfre_9HNPXMC_13Ey-dprx3epp8xMn05x86LKvh6es5VaejceR8Ycnxu__bZy=
h2tErt06Y1hZgC9EalIiFKEQlqtZw5CqntP2aJoUk-kxUQSXX6tc1TMsi-uNAHJ7P3dvvw9ufE-=
PfP-318V5fS26hPYVyyQuGO4Jyg-oKAjbADeQHbUyoZg" target=3D"_blank" style=3D"te=
xt-decoration: none !important;"><img src=3D"cid:dcd0c4c6a08b70b98102c6f527=
8e1255.png" alt=3D"" width=3D"27" height=3D"27" norescale=3D"true" style=3D=
"max-width: 27px; display: block; border: 0px;" /></a></p>
</td>
<td width=3D"3" style=3D"padding: 0px 0px 1px;"></td>
<td width=3D"27" style=3D"font-size: 0px; line-height: 0px; padding: 13px 1=
px 0px 0px;">
<p style=3D"margin: 0px 1px;"><a href=3D"http://email.email.datadirectgloba=
l.com/c/eJx1UMtu2zAQ_BrpJmG1fB94aOy6SOC4RRMnvlIS9UhkSpEouO7Xl7JTuJcCBGZ2sDs=
YziF5NG1nx-SnLQZ_X2qKXCGB2OqMC6ASBYe41NYyzm3cagTEDEECZwohVcYQgwqkZCbjICMK9h=
gc09J4U7ajLXzd9bnp0qI_xo2uiDSiEABArCIADGmVy0xipoIRKeLD30BP1vnk7qwzRIg73Xg_T=
BH5EuEmvNPplJ772c-5XYyDUjTGOdsFtl89POydeD4_NR8_-t34u9msX16-n27Wz72rS9PrJWg9=
u3jUXevmX4nzechf933d2Xrs52G6pN62k0_2bprzqRjb3OqIrJY41yh-NMV76-r0__8OW_PtPB2=
aISKbx4isP8uOkK_ClJWWmqoUUApaGWSIggqqqKoMQcKzsLZd1hhlge4C5aDYcr1f5NBToN8Ogc=
PuWL-9Ht4-3iPy9Z9K79f6cnKTtkHKGBERrgLIK6gLULgCXoH9ASiqpPM" target=3D"_blank=
" style=3D"text-decoration: none !important;"><img src=3D"cid:704b68c91ebd1=
4f727a2101a5ca139cb.png" alt=3D"" width=3D"27" height=3D"27" norescale=3D"t=
rue" style=3D"max-width: 27px; display: block; border: 0px;" /></a></p>
</td>
<td width=3D"3" style=3D"padding: 0px 0px 1px;"></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=3D"padding: 0px 1px 0px 0px;">
<table cellpadding=3D"0" cellspacing=3D"0" border=3D"0">
<tbody>
<tr>
<td style=3D"padding: 15px 1px 0px 0px;">
<p style=3D"margin: 0px 1px;"><a href=3D"http://email.email.datadirectgloba=
l.com/c/eJx1UMtu2zAQ_BrpJoFcvqQDD63TFAGcHJoG9XVFUjRjWVQkCkj_PpTdwrkEIDjDwc5=
guIfqEcPg5uqXM1N6sJqDbIGR0mkqFeENKElKq50TUroyaCAAFEhDpGiB1C0iQ2hJ0wikkjQFJ-=
6cE2uLCW2YnUl-iB0OtYnn8qihk6ZBZ2nfUisNUbzDHpELRRQlxpWH_4We3Ziq7381BSDloI8pT=
UvBvhVwn88S_Ihpnd0xrqPdsj-LmZuE-aadCfG0DBCj6G7Rv-PoLUa9FfXrWM56COP6Xo2py_19=
jH5wfo7rtFxa78OSqpdxWbvFzKFzumC7rc61SprRnMLo66__nafWm72ejlPB7h8Ldvdv2QXIXX5=
R6zj2VhGreI8gABRXvOVtjwyYpHlsv40JLjJ9ylSSVmzul03Oe8r05yFz8nT2r38Or2-ngv34tN=
KHO32x3KR9lqhgqoBdhuYK7QU4uQJcQXwAm-GmdQ" target=3D"_blank" style=3D"text-d=
ecoration: none !important;"><img src=3D"http://email.email.datadirectgloba=
l.com/c/eJx1UMtu2zAQ_BrqJmG1fEg88NA6TRHAySFtUF8pkpIZy5IiUUHy913ZLdxLAWJnOOA=
OZ_eQP9rYhzl_Dm5KD94IVBo5ZMGUqgJRY6Ug8yYEqVTIokFALBFqUFIjFNpablFDXUtbKqiZgH=
Amx8LbZH2cg0tdPza2L9x4zo6mRVtLrFruBYDjDRfYOl02DnjTbD8c_gb6EYaUf_00JSJkvTmmN=
C2Mf2F4T2eJ3WDTOofjuA5-8ybRTpHqe0mlJQsC8o3jaenxQ7vqZv1zHDpvR7MF7dYhm00fh_Uj=
H1JD-btx7PrQzeM6LZfU-7ik_GVY1mZxc2yCYXy3xblGSbN1pzh0xf_nplfrrb2YjhPj94-M3_1=
ZNkO1o1vpg7Ctr8BXorUoEStRCS10azlyRXOp_fZMCkn0iagCLbful02mPRH9fiAOT-fu9dfh9e=
3E-Ld_VvpwZy4tN2lPUil5xXBHUF9BX0DAFfAK8jd9QaT9" alt=3D"" width=3D"401" heig=
ht=3D"83" norescale=3D"true" style=3D"max-width: 401px; display: block; bor=
der: 0px;" /></a></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=3D"padding: 0px 1px 0px 0px;">
<table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" style=3D"max-width:=
 600px;">
<tbody>
<tr>
<td style=3D"padding: 15px 1px 0px 0px; font-family: Arial, Helvetica, sans=
-serif; font-size: 10px; line-height: 12px; color: #888888;">
<p style=3D"margin: 0px 1px;">=E2=80=8BHardware: Routers, Switches, Firewal=
ls, Wireless, Voice &amp; Video , Storages, Servers<br />Services: Maintena=
nce, Worldwide delivery, APAC region onsite Installation, Rentals, Blind sh=
ips</p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</div>
<img src=3D"http://email.email.datadirectglobal.com/c/eJydUU2P0zAQ_TXJLZE9_=
j74AF0KK3X3AKzo1YknbrppElJHgn_PtAWVAxxAsvSenzwz74331VPoB1yqj9jO-TF6CdqBYCV6=
rg2TFoxmZfSISmssew8MgAOzTCsHrHYhiACOWasC18wWkuGJOtYx5BD7BduchqkJQ91Op_LgjbN=
WCtWB1Q4RY-eM486xlkfmbBPL_S9Dn3DM1dvvngOwcvCHnOdCvClgSycvoX3tx1T_fRa9mmYc6_=
lAZdunQjz8TFaA3tGNK6mIPhPVzKmL_HKRaRrR93vi7PmUjl_2x6-vpGxJ-EDYn0JC4vVxTnezn=
6cxxTD5i520juXih35cv1VjbmgjaZrSgGmZ1vl83cOuP-fqZTyvzbld-gZ9ITbXgP-Qbr2X_zHk=
5pImogxdNCwa2QVQAEYa6aTrggCh-X_tQrz77ZMeH_y15C7tSOJKmAI2BPYG7gqS3QBuoH4Aqfm=
5fg" height=3D"1" width=3D"10"><br/><a href=3D"http://email.email.datadirec=
tglobal.com/c/eJzVUctugzAQ_BpzAy3rB_jgQ5s0VaQkhz5UrgYbQkKAgpHav68hrdJLP6CSp=
RmPdtcz6yzc67qxQ_hki95tjWIoJFIIrIpFAizFREBglLVcCBvUCgExRkhBcIkQSa2pRglpynUs=
ICUM7MVPjIx22tSDLVzVdLluoqK7BEdludXADC05ZZhLC4Wfo_NUpLkurJRB9mPo2bYuvP9UMSI=
EjTo61xN6R3Djjxt0ca7bKvr7LV81teOUj8VQ5zbqj757syd0_R2QoFj5W2ws06VJwCSs1MgRE5=
YwyWSpKVIR-7LdXMYZ9_TgqQDJ5-7XWfbePH3MPIfDpTq9Zaf38y3DS9dWRndqdllNbTCopm6nj=
7B1uV9U1XVVY6uhm_pxWc-uHl34enOtCF0tuf9BaEIffv3ddq2Wlpu081LMaUJw5SG9glyAwRXw=
CvwLDHPAiw">Click here to unsubscribe</a></body>
</html>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/20221208065920.9aa3a290885a1608%40email.datadirectglobal.com.

--0af81d754136316a40c39609925df9cb1d3e1ed30c7fb5937ba5a3de6909
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
</head>
<body>
<style class=3D"fox_global_style"><!--
div.fox_html_content { line-height: 1.5; }div.fox_html_content { font-size:=
 14px; font-family: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91; color: rgb(0, 0, =
0); line-height: 1.5; }
--></style>
<div>Hello&nbsp;Linux,</div>
<div></div>
<div><span style=3D"font-family: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91, Taho=
ma;">Here&nbsp;is&nbsp;our&nbsp;latest&nbsp;Cisco &amp; Aruba&nbsp;stock&nb=
sp;list&nbsp;with a GREAT price.&nbsp;</span><span style=3D"orphans: 2; lin=
e-height: 1.5; background-color: transparent;">All&nbsp;the&nbsp;following&=
nbsp;products&nbsp;are&nbsp;Brand&nbsp;New&nbsp;Sealed &amp;</span><span st=
yle=3D"font-family: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91, Tahoma; line-heig=
ht: 1.5; background-color: transparent;">&nbsp;ready to ship.</span></div>
<div><span style=3D"font-family: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91, Taho=
ma; line-height: 1.5; background-color: transparent;"><br /></span></div>
<div><span style=3D"orphans: 2;">Fast&nbsp;delivery&nbsp;time&nbsp;and&nbsp=
;Flexible&nbsp;suitable&nbsp;shipping&nbsp;terms.</span></div>
<div><span style=3D"font-family: =E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91, Taho=
ma;"><br /></span></div>
<div>Don't&nbsp;hesitate&nbsp;to&nbsp;contact&nbsp;me&nbsp;at&nbsp;nina@dat=
adirectglobal.com<span style=3D"color: #333333; font-family: Arial, Helveti=
ca; font-size: 16px; line-height: 27.2px; orphans: 2; widows: 2; background=
-color: #f8f8f8;">&nbsp;</span>if&nbsp;you&nbsp;are&nbsp;interested&nbsp;in=
 Cisco &amp; Aruba.</div>
<div></div>
<div><google-sheets-html-origin>
<table xmlns=3D"http://www.w3.org/1999/xhtml" cellspacing=3D"0" cellpadding=
=3D"0" dir=3D"ltr" border=3D"1" style=3D"table-layout: fixed; font-size: 10=
pt; font-family: Arial; width: 0px; border-collapse: collapse; border: none=
;"><colgroup><col width=3D"134" /><col width=3D"643" /><col width=3D"69" />=
<col width=3D"69" /><col width=3D"117" /></colgroup>
<tbody>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #26a69a; font-weight: bold; text-align: center;" da=
ta-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Part Number&quot;}"=
>Part Number</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #26a69a; font-weight: bold; text-align: center;" da=
ta-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Description&quot;}"=
>Description</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #26a69a; font-weight: bold; text-align: center;" da=
ta-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Stock Qty&quot;}">S=
tock Qty</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #26a69a; font-weight: bold; text-align: center;" da=
ta-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Unit Price&quot;}">=
Unit Price</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #26a69a; font-weight: bold; text-align: center;" da=
ta-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Remark&quot;}">Rema=
rk</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;JL075A&quot;}">JL075A</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba 3810M 16SFP+=
 2-slot Swch&quot;}">Aruba 3810M 16SFP+ 2-slot Swch</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:2}">=
2</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;$5,520.00&quot;}">$5,520.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;JL724A&quot;}">JL724A</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Aruba 6200F 24G 4SFP+ Switch&quot;}">Aruba 6200F 24G 4SFP+=
 Switch</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:3}">3</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;$1,944.00&quot;}">$1,944.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;JL322A&quot;}">JL322A</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba 2930M 48G Po=
E+ 1-slot Switch.&quot;}">Aruba 2930M 48G PoE+ 1-slot Switch.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:7}">=
7</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;$3,600.00&quot;}">$3,600.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;JL676A&quot;}">JL676A</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Aruba 6100 48G 4SFP+ Switch&quot;}">Aruba 6100 48G 4SFP+ S=
witch</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:3}">3</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;$1,420.00&quot;}">$1,420.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;JL678A&quot;}">JL678A</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba 6100 24G 4SF=
P+ Switch&quot;}">Aruba 6100 24G 4SFP+ Switch</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:30}"=
>30</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;$1,200.00&quot;}">$1,200.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;JL253A&quot;}">JL253A</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Aruba 2930F 24G 4SFP+ Swch.&quot;}">Aruba 2930F 24G 4SFP+ =
Swch.</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:5}">5</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;$2,200.00&quot;}">$2,200.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;JL685A&quot;}">JL685A</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba Instant On 1=
930 48G 4SFP/SFP+ Switch&quot;}">Aruba Instant On 1930 48G 4SFP/SFP+ Switch=
</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:10}"=
>10</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;$695.00&quot;}">$695.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;JL679A&quot;}">JL679A</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Aruba 6100 12G Class4 PoE 2G/2SFP+ 139W Switch&quot;}">Aru=
ba 6100 12G Class4 PoE 2G/2SFP+ 139W Switch</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:20}">20</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;$900.00&quot;}">$900.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;JL319A&quot;}">JL319A</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba 2930M 24G 1-=
slot Switch.&quot;}">Aruba 2930M 24G 1-slot Switch.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:3}">=
3</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;$1,521.00&quot;}">$1,521.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;JL320A&quot;}">JL320A</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Aruba 2930M 24G PoE+ 1-slot Switch&quot;}">Aruba 2930M 24G=
 PoE+ 1-slot Switch</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:40}">40</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;$1,710.00&quot;}">$1,710.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;R8N86A&quot;}">R8N86A</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba 6000 48G 4SF=
P Switch&quot;}">Aruba 6000 48G 4SFP Switch</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:35}"=
>35</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;$1,050.00&quot;}">$1,050.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;R8N87A&quot;}">R8N87A</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Aruba 6000 24G Class4 PoE 4SFP 370W Switch&quot;}">Aruba 6=
000 24G Class4 PoE 4SFP 370W Switch</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:13}">13</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;$1,150.00&quot;}">$1,150.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;R8N88A&quot;}">R8N88A</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba 6000 24G 4SF=
P Switch&quot;}">Aruba 6000 24G 4SFP Switch</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:80}"=
>80</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;$695.00&quot;}">$695.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;R7J27A&quot;}">R7J27A</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Aruba AP-635 (RW) Tri-radio 2x2:2 802.11ax Wi-Fi 6E Intern=
al Antennas Campus AP&quot;}">Aruba AP-635 (RW) Tri-radio 2x2:2 802.11ax Wi=
-Fi 6E Internal Antennas Campus AP</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:80}">80</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;$500.00&quot;}">$500.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;JZ320A&quot;}">JZ320A</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba AP-303 (RW) =
Unified AP.&quot;}">Aruba AP-303 (RW) Unified AP.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:23}"=
>23</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;$165.00&quot;}">$165.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;R2H28A&quot;}">R2H28A</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Aruba AP-505 (RW) Unified AP&quot;}">Aruba AP-505 (RW) Uni=
fied AP</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:255}">255</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;$230.00&quot;}">$230.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Q9H62A&quot;}">Q9H62A</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba AP-515 (RW) =
Unified AP.&quot;}">Aruba AP-515 (RW) Unified AP.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:375}=
">375</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;$455.00&quot;}">$455.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;JZ336A&quot;}">JZ336A</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Aruba AP-535 (RW) Unified AP.&quot;}">Aruba AP-535 (RW) Un=
ified AP.</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:67}">67</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;$578.00&quot;}">$578.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Aruba New&quot;}">Aruba New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;C9200-STACK-KIT=3D&quot;}">C9200-STACK-KIT=3D</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Cisco Catalyst 920=
0 Stack Module.&quot;}">Cisco Catalyst 9200 Stack Module.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:19}"=
>19</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:647.=
5}" data-sheets-numberformat=3D"{&quot;1&quot;:4,&quot;2&quot;:&quot;[$$]#,=
##0.00&quot;,&quot;3&quot;:1}">$647.50</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Cisco New&quot;}">Cisco New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: bo=
ttom; background-color: #ddf2f0; color: #434343; text-align: center;" data-=
sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;C1000-24T-4G-L&quot;}"=
>C1000-24T-4G-L</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Catalyst 1000 24port GE, 4x1G SFP.&quot;}">Catalyst 1000 2=
4port GE, 4x1G SFP.</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:66}">66</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:577.5}" data-sheets-numberformat=3D"{&quot;1=
&quot;:4,&quot;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;:1}">$577.50</=
td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Cisco New&quot;}">Cisco New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; co=
lor: #434343; text-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&q=
uot;2&quot;:&quot;C9300-48P-E&quot;}">C9300-48P-E</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Catalyst 9300 48-p=
ort PoE+, Network Essentials.&quot;}">Catalyst 9300 48-port PoE+, Network E=
ssentials.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:18}"=
>18</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:3825=
}" data-sheets-numberformat=3D"{&quot;1&quot;:4,&quot;2&quot;:&quot;[$$]#,#=
#0.00&quot;,&quot;3&quot;:1}">$3,825.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Cisco New&quot;}">Cisco New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; color: #434343; text-align: center; background-color: =
#ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;C1000-2=
4T-4X-L&quot;}">C1000-24T-4X-L</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Catalyst 1000 24 port GE, 4x10G SFP.&quot;}">Catalyst 1000=
 24 port GE, 4x10G SFP.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:54}">54</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:954}" data-sheets-numberforma=
t=3D"{&quot;1&quot;:4,&quot;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;:=
1}">$954.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Cisco New&quot;}">Cisco New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; wo=
rd-wrap: break-word; color: #434343; text-align: center;" data-sheets-value=
=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;C9200L-48P-4G-E&quot;}">C9200L-48P=
-4G-E</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Catalyst 9200L 48-=
port PoE+, 4 x 1G, Network Essentials.&quot;}">Catalyst 9200L 48-port PoE+,=
 4 x 1G, Network Essentials.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center;" data-sheets-value=3D"{&quot;1&quo=
t;:3,&quot;3&quot;:41}">41</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center;" data-sheets-value=3D"{&quot;1&quo=
t;:3,&quot;3&quot;:3150}" data-sheets-numberformat=3D"{&quot;1&quot;:4,&quo=
t;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;:1}">$3,150.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Cisco New&quot;}">Cisco New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; wo=
rd-wrap: break-word; color: #434343; text-align: center; background-color: =
#ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;C9200L-=
48P-4X-E&quot;}">C9200L-48P-4X-E</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Catalyst 9200L 48-port PoE+, 4 x 10G, Network Essentials.&=
quot;}">Catalyst 9200L 48-port PoE+, 4 x 10G, Network Essentials.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:8}">8</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:3912}" data-sheets-numberform=
at=3D"{&quot;1&quot;:4,&quot;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;=
:1}">$3,912.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Cisco New&quot;}">Cisco New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; wo=
rd-wrap: break-word; color: #434343; text-align: center;" data-sheets-value=
=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;C9200L-STACK-KIT=3D&quot;}">C9200L=
-STACK-KIT=3D</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Cisco Catalyst 920=
0L Stack Module.&quot;}">Cisco Catalyst 9200L Stack Module.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center;" data-sheets-value=3D"{&quot;1&quo=
t;:3,&quot;3&quot;:29}">29</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center;" data-sheets-value=3D"{&quot;1&quo=
t;:3,&quot;3&quot;:585}" data-sheets-numberformat=3D"{&quot;1&quot;:4,&quot=
;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;:1}">$585.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Cisco New&quot;}">Cisco New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; wo=
rd-wrap: break-word; color: #434343; text-align: center; background-color: =
#ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;C9300-2=
4T-E&quot;}">C9300-24T-E</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Catalyst 9300 24-port data only, Network Essentials.&quot;=
}">Catalyst 9300 24-port data only, Network Essentials.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:33}">33</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:2278}" data-sheets-numberform=
at=3D"{&quot;1&quot;:4,&quot;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;=
:1}">$2,278.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Cisco New&quot;}">Cisco New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; co=
lor: #434343; text-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&q=
uot;2&quot;:&quot;ISR4221/K9&quot;}">ISR4221/K9</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Cisco ISR 4221 (2G=
E,2NIM,8G FLASH,4G DRAM,IPB).&quot;}">Cisco ISR 4221 (2GE,2NIM,8G FLASH,4G =
DRAM,IPB).</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:12}"=
>12</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:795}=
" data-sheets-numberformat=3D"{&quot;1&quot;:4,&quot;2&quot;:&quot;[$$]#,##=
0.00&quot;,&quot;3&quot;:1}">$795.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Cisco New&quot;}">Cisco New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; color: #434343; text-align: center;" data-=
sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;C1000-48T-4G-L&quot;}"=
>C1000-48T-4G-L</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;Catalyst 1000 48port GE, 4x1G SFP.&quot;}">Catalyst 1000 4=
8port GE, 4x1G SFP.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:62}">62</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:1140}" data-sheets-numberform=
at=3D"{&quot;1&quot;:4,&quot;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;=
:1}">$1,140.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Cisco New&quot;}">Cisco New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; co=
lor: #434343; text-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&q=
uot;2&quot;:&quot;FG-200F&quot;}">FG-200F</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;18 x GE RJ45 (incl=
uding 1 x MGMT port, 1 X HA port, 16 x switch ports), \n8 x GE SFP slots, 4=
 x 10GE SFP+ slots, NP6XLite and CP9 hardware accelerated..&quot;}">18 x GE=
 RJ45 (including 1 x MGMT port, 1 X HA port, 16 x switch ports), <br />8 x =
GE SFP slots, 4 x 10GE SFP+ slots, NP6XLite and CP9 hardware accelerated..<=
/td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center;" data-sheets-value=3D"{&quot;1&quo=
t;:3,&quot;3&quot;:30}">30</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center;" data-sheets-value=3D"{&quot;1&quo=
t;:3,&quot;3&quot;:3894}" data-sheets-numberformat=3D"{&quot;1&quot;:4,&quo=
t;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;:1}">$3,894.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Fortinet New&quot;}">Fortinet New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; color: #434343; text-align: center;" data-=
sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;FG-201F&quot;}">FG-201=
F</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; wrap-strategy: 3; white-space: clip;" data=
-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;18 x GE RJ45 (includi=
ng 1 x MGMT port, 1 X HA port, 16 x switch ports), 8 x GE SFP slots, \n4 x =
10GE SFP+ slots, NP6XLite and CP9 hardware accelerated, 480GB onboard SSD s=
torage..\n&quot;}">18 x GE RJ45 (including 1 x MGMT port, 1 X HA port, 16 x=
 switch ports), 8 x GE SFP slots, <br />4 x 10GE SFP+ slots, NP6XLite and C=
P9 hardware accelerated, 480GB onboard SSD storage..</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:10}">10</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:3,&quot;3&quot;:4900}" data-sheets-numberformat=3D"{&quot;1&=
quot;:4,&quot;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;:1}">$4,900.00<=
/td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Fortinet New&quot;}">Fortinet New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; co=
lor: #434343; text-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&q=
uot;2&quot;:&quot;FG-101F&quot;}">FG-101F</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;22 x GE RJ45 ports=
 (including 2 x WAN ports, 1 x DMZ port, 1 x Mgmt port, 2 x HA ports, \n16 =
x switch ports with 4 SFP port shared media), \n4 SFP ports, 2x 10G SFP+ Fo=
rtiLinks, 480GB onboard storage, dual power supplies redundancy..&quot;}">2=
2 x GE RJ45 ports (including 2 x WAN ports, 1 x DMZ port, 1 x Mgmt port, 2 =
x HA ports, <br />16 x switch ports with 4 SFP port shared media), <br />4 =
SFP ports, 2x 10G SFP+ FortiLinks, 480GB onboard storage, dual power suppli=
es redundancy..</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:10}"=
>10</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center;" data-sheets-value=3D"{&quot;1&quo=
t;:3,&quot;3&quot;:3413}" data-sheets-numberformat=3D"{&quot;1&quot;:4,&quo=
t;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;:1}">$3,413.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Fortinet New&quot;}">Fortinet New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; color: #434343; text-align: center;" data-=
sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;FG-601E&quot;}">FG-601=
E</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&qu=
ot;2&quot;:&quot;2 x 10GE SFP+ slots, 10 x GE RJ45 ports (including 1 x MGM=
T port, 1 X HA port, \n8 x switch ports), 8 x GE SFP slots, SPU NP6 and CP9=
 hardware accelerated\n, 2x 240GB onboard SSD storage.&quot;}">2 x 10GE SFP=
+ slots, 10 x GE RJ45 ports (including 1 x MGMT port, 1 X HA port, <br />8 =
x switch ports), 8 x GE SFP slots, SPU NP6 and CP9 hardware accelerated<br =
/>, 2x 240GB onboard SSD storage.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:6}">6</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:7455}" data-sheets-numberform=
at=3D"{&quot;1&quot;:4,&quot;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;=
:1}">$7,455.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Fortinet New&quot;}">Fortinet New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; co=
lor: #434343; text-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&q=
uot;2&quot;:&quot;FG-600E&quot;}">FG-600E</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;2 x 10GE SFP+ slot=
s, 10 x GE RJ45 ports (including 1 x MGMT port, 1 X HA port, 8 x switch por=
ts), \n8 x GE SFP slots, SPU NP6 and CP9 hardware accelerated.&quot;}">2 x =
10GE SFP+ slots, 10 x GE RJ45 ports (including 1 x MGMT port, 1 X HA port, =
8 x switch ports), <br />8 x GE SFP slots, SPU NP6 and CP9 hardware acceler=
ated.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center;" data-sheets-value=3D"{&quot;1&quo=
t;:3,&quot;3&quot;:10}">10</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:6825=
}" data-sheets-numberformat=3D"{&quot;1&quot;:4,&quot;2&quot;:&quot;[$$]#,#=
#0.00&quot;,&quot;3&quot;:1}">$6,825.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Fortinet New&quot;}">Fortinet New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: bottom; wo=
rd-wrap: break-word; color: #434343; text-align: center; background-color: =
#ddf2f0;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;FAP-221=
E-C&quot;}">FAP-221E-C</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; wrap-strategy: 3; white-space: clip;" data=
-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Indoor Wireless AP - =
Dual radio (802.11 b/g/n and 802.11 a/n/ac Wave 2, 2x2 MU-MIMO), internal a=
ntennas, \n1 x 10/100/1000 RJ45 port, BT / BLE. Ceiling/wall mount kit incl=
uded.For power order:\n 802.3af PoE injector GPI-115 or AC adapter SP-FAP20=
0-PA. Region Code C.&quot;}">Indoor Wireless AP - Dual radio (802.11 b/g/n =
and 802.11 a/n/ac Wave 2, 2x2 MU-MIMO), internal antennas, <br />1 x 10/100=
/1000 RJ45 port, BT / BLE. Ceiling/wall mount kit included.For power order:=
<br /> 802.3af PoE injector GPI-115 or AC adapter SP-FAP200-PA. Region Code=
 C.</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:500}">500</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center; background-color: #ddf2f0;" data-s=
heets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:272}" data-sheets-numberforma=
t=3D"{&quot;1&quot;:4,&quot;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;:=
1}">$272.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px 2px 3px; vertical-align: mi=
ddle; background-color: #ddf2f0; text-align: center;" data-sheets-value=3D"=
{&quot;1&quot;:2,&quot;2&quot;:&quot;Fortinet New&quot;}">Fortinet New</td>
</tr>
<tr style=3D"height: 21px;">
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; co=
lor: #434343; text-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&q=
uot;2&quot;:&quot;FAP-231F-C&quot;}">FAP-231F-C</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle;" d=
ata-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quot;Indoor Wireless AP=
 - Tri radio (802.11 b/g/n/ax 2x2 MU-MIMO, 802.11 a/n/ac/ax 2x2 MU-MIMO and=
 \n1x 802.11 a/b/g/n/ac Wave 2, 1x1 ), internal antennas, 2x 10/100/1000 RJ=
45 port, BT/BLE, 1x Type A USB, \n1x RS-232 RJ45 Serial Port. Ceiling/wall =
mount kit included.For power order: 802.3at PoE injector GPI-130 \nor AC ad=
apter SP-FAP250-PA-10. Region Code C.\n\n&quot;}">Indoor Wireless AP - Tri =
radio (802.11 b/g/n/ax 2x2 MU-MIMO, 802.11 a/n/ac/ax 2x2 MU-MIMO and <br />=
1x 802.11 a/b/g/n/ac Wave 2, 1x1 ), internal antennas, 2x 10/100/1000 RJ45 =
port, BT/BLE, 1x Type A USB, <br />1x RS-232 RJ45 Serial Port. Ceiling/wall=
 mount kit included.For power order: 802.3at PoE injector GPI-130 <br />or =
AC adapter SP-FAP250-PA-10. Region Code C.<br /><br /></td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:3,&quot;3&quot;:200}=
">200</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; wo=
rd-wrap: break-word; text-align: center;" data-sheets-value=3D"{&quot;1&quo=
t;:3,&quot;3&quot;:420}" data-sheets-numberformat=3D"{&quot;1&quot;:4,&quot=
;2&quot;:&quot;[$$]#,##0.00&quot;,&quot;3&quot;:1}">$420.00</td>
<td style=3D"overflow: hidden; padding: 2px 3px; vertical-align: middle; te=
xt-align: center;" data-sheets-value=3D"{&quot;1&quot;:2,&quot;2&quot;:&quo=
t;Fortinet New&quot;}">Fortinet New</td>
</tr>
</tbody>
</table>
</google-sheets-html-origin></div>
<div></div>
<div>
<table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" style=3D"font-famil=
y: 'Microsoft YaHei'; orphans: 2; widows: 2;">
<tbody>
<tr>
<td style=3D"padding: 0px 1px 0px 0px;">
<table cellpadding=3D"0" cellspacing=3D"0" border=3D"0">
<tbody>
<tr>
<td style=3D"padding: 0px 1px 0px 0px;">
<table cellpadding=3D"0" cellspacing=3D"0" border=3D"0">
<tbody>
<tr>
<td style=3D"padding: 0px 20px 0px 0px; vertical-align: top; font-family: A=
rial, Helvetica, sans-serif; font-size: 13px; line-height: 15px; white-spac=
e: nowrap;">
<p style=3D"margin: 0px 1px; font-weight: bold;">Nina Zhang</p>
<p style=3D"margin: 0px 1px; line-height: 16px; color: #888888;">Sales Mana=
ger</p>
<p style=3D"margin: 0px 1px; line-height: 16px; color: #888888;">Sales Depa=
rtment</p>
<p style=3D"margin: 0px 1px; line-height: 16px; color: #888888;">DATADIRECT=
 GLOBAL LIMITED</p>
</td>
<td width=3D"10" style=3D"padding: 0px 1px 0px 0px;"></td>
<td style=3D"padding: 0px 1px 0px 0px; vertical-align: top;">
<table cellpadding=3D"0" cellspacing=3D"0" border=3D"0">
<tbody>
<tr>
<td valign=3D"middle" style=3D"padding: 1px 5px 1px 0px; vertical-align: mi=
ddle;">
<p style=3D"margin: 0px 1px;"><img src=3D"cid:95715f1d0ddd0e982c17a685e469d=
acd.png" alt=3D"" width=3D"15" height=3D"15" norescale=3D"true" style=3D"ma=
x-width: 15px; display: block; border: 0px;" /></p>
</td>
<td style=3D"line-height: 15px; padding: 1px 0px; vertical-align: middle;">
<p style=3D"margin: 0px 1px;">live:nina_6104</p>
</td>
</tr>
<tr>
<td valign=3D"middle" style=3D"padding: 1px 5px 1px 0px; vertical-align: mi=
ddle;">
<p style=3D"margin: 0px 1px;"><img src=3D"cid:46278429b8789746f43ac394c6a80=
eb8.png" alt=3D"" width=3D"15" height=3D"15" norescale=3D"true" class=3D"im=
age_zoomin" style=3D"cursor: url('../../Common/FoxUI/Images/New/Icon/zoomin=
.cur'), pointer; max-width: 15px; display: block; border: 0px;" /></p>
</td>
<td style=3D"line-height: 15px; padding: 1px 0px; vertical-align: middle;">
<p style=3D"margin: 0px 1px;"><a href=3D"tel:+8618217340100" target=3D"_bla=
nk" style=3D"text-decoration: none !important; font-family: Arial, Helvetic=
a, sans-serif; font-size: 13px; white-space: nowrap; color: #888888;">+8615=
850193304 (whatsapp)</a></p>
</td>
</tr>
<tr>
<td valign=3D"middle" style=3D"padding: 1px 5px 1px 0px; vertical-align: mi=
ddle;">
<p style=3D"margin: 0px 1px;"><img src=3D"cid:85b9c556ecc80dde80f62c6140a8c=
f77.png" alt=3D"" width=3D"15" height=3D"15" norescale=3D"true" style=3D"ma=
x-width: 15px; display: block; border: 0px;" /></p>
</td>
<td style=3D"line-height: 15px; padding: 1px 0px; vertical-align: middle;">
<p style=3D"margin: 0px 1px;"><span style=3D"font-family: Arial, Helvetica,=
 sans-serif; font-size: 13px; white-space: nowrap; color: #888888;">Hong Ko=
ng | Houston | Shanghai | Suzhou</span></p>
</td>
</tr>
<tr>
<td valign=3D"middle" style=3D"padding: 1px 5px 1px 0px; vertical-align: mi=
ddle;">
<p style=3D"margin: 0px 1px;"><img src=3D"cid:0f51b1d4c7b9368d786515ed91a00=
ac9.png" alt=3D"" width=3D"15" height=3D"15" norescale=3D"true" style=3D"ma=
x-width: 15px; display: block; border: 0px;" /></p>
</td>
<td style=3D"line-height: 15px; padding: 1px 0px; vertical-align: middle;">
<p style=3D"margin: 0px 1px;"><a href=3D"http://email.email.datadirectgloba=
l.com/c/eJx1UMlugzAU_Bq4gZ6fF_DBhzZpqkhJDl1UrgYch4QABaO0f19DWqWHVrI04_FbxpN=
FW13Vpo-eTNG5dakYCokUQqOISIClmAgIS2UMF8KElUJAJAgpCC4RYqk11SghTbkmAtKAgTn7iX=
GpnS6r3hTO1m2u67hoz-FBac15wVMtgSIHw3KQMhdADONUFpyH2Y-hZ9O46P5TEUQIa3VwrgvoX=
YArfy6Xy58L_NNtwEvb2FK3arJjxybsVV0140fUuNy7tG1ra2P7duyG2dumGlz02gxjPhR9lRsV=
0MW8dN7oel2cqsbG___OV4239rg7eL-rbUCX35EGKBb-RkrD9L5MoEzYXiNHTFjCJJN7TZEK4ss=
2Uxln3NOdpwIkn7pfJ9mn4elj5jnszvb4lh3fTwF9-BXceqnmlpu08RLhNAlw4SG9gpyBwRXwCv=
wLZ9ucEg" target=3D"_blank" style=3D"text-decoration: none !important; font=
-family: Arial, Helvetica, sans-serif; font-size: 13px; white-space: nowrap=
; color: #007bff; font-weight: bold;">datadirectglobal.com</a></p>
</td>
</tr>
</tbody>
</table>
</td>
<td width=3D"15" style=3D"padding: 0px 1px 0px 0px;"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=3D"padding: 0px 1px 0px 0px;">
<table cellpadding=3D"0" cellspacing=3D"0" border=3D"0">
<tbody>
<tr>
<td width=3D"27" style=3D"font-size: 0px; line-height: 0px; padding: 13px 1=
px 0px 0px;">
<p style=3D"margin: 0px 1px;"><a href=3D"http://email.email.datadirectgloba=
l.com/c/eJx1UE1vozAU_DXmBnp-_sIHH9r0Q5XSHrZbba4GG0JDMAWjdP99TbKr9FLJ0oxHb8b=
jt8ufbdf7Kf_l6zE-OcNRamSQeUOlAl6ikpA5472Q0medQUCkCCVIoREKbS2zqKEshaUSSsLBH1=
Ni4Wy0rpt8Hds-VLYv6nDM9sYxcJBCNTBZK1RrKqfcckkbISTNdv8Lvfoh5rd_DUWErDf7GMeZs=
BuCD-mcTqeisbWvQjisyUkafDyF6eA_lm48Jm-SrmG_w9A6G8xarV2GbDJ9Nyyf-RCr1LgNoe19=
O4VlnM89t90c87dhXqq5nrrKG8I2a4HL43Gy9aEb2uLnn6ap5Wovxv1I2MMzYXf_1ktQbtKNOs9=
t4xQ4xRuLAlFxxTXXjWXIJE1j23VMcJHoS6IStFjdb6ucNpPo4y5xeDm273927x8Hwu6_LfHpzp=
wtV2mbJCqYIrhJUF5An4HDBfAC4gtXHaAu" target=3D"_blank" style=3D"text-decorat=
ion: none !important;"><img src=3D"cid:e9d2074b3fe3b7401cfe968b8077b2f7.png=
" alt=3D"" width=3D"27" height=3D"27" norescale=3D"true" style=3D"max-width=
: 27px; display: block; border: 0px;" /></a></p>
</td>
<td width=3D"3" style=3D"padding: 0px 0px 1px;"></td>
<td width=3D"27" style=3D"font-size: 0px; line-height: 0px; padding: 13px 1=
px 0px 0px;">
<p style=3D"margin: 0px 1px;"><a href=3D"http://email.email.datadirectgloba=
l.com/c/eJx1UMtOwzAQ_Brnlshevw8-QEsRUuHAQ_TqxG6aNk2C4wj4e5wWKBckSzO7mp0d7ya=
_t03rQ_7oqyHeOcNAaKA484YIiZkCKXDmjPdcCJ81BjAAAayw4Bpwoa2lFjRWilsisEIM-2NyLJ=
yN1jXBV7Fu-9K2RdUfs52hygmiSiWTbqup1ABWgMSCEg-gqmzzE-jJdzG__jQEAGet2cU4jIheI=
VilF9-bGH2YTVO19yF8_i4kF4_nvqud7c2cqJ66LJi26aaPvItlClr3fd36OvTTMJ7irZsx5i_d=
OJVjFZrSG0QX897vncFWh6ari_8_mFTTZbwYdgOiq3tEl99XRSAWqSLOM7t1EjvJthY4gGSSaaa=
3lgIVJMnWs4wznuhDogJrPk-_zO10kERvN4njh2O9f93s3w6I3vy53d3SnEYurXVqEU4lgkUCdQ=
Z9AobPAGfgX2cLnSw" target=3D"_blank" style=3D"text-decoration: none !import=
ant;"><img src=3D"cid:21408cee2de3f3b1071e63254df5bb00.png" alt=3D"" width=
=3D"27" height=3D"27" norescale=3D"true" style=3D"max-width: 27px; display:=
 block; border: 0px;" /></a></p>
</td>
<td width=3D"3" style=3D"padding: 0px 0px 1px;"></td>
<td width=3D"27" style=3D"font-size: 0px; line-height: 0px; padding: 13px 1=
px 0px 0px;">
<p style=3D"margin: 0px 1px;"><a href=3D"http://email.email.datadirectgloba=
l.com/c/eJx1UE1vnDAQ_TXmBhrGH8DBh3TTVJE2OTSNuleDDessaygYbfPvMyytNpdIlt_zeOb=
NmzmkT8b3bkp_umaMj1YLVBVySJzOVQGixEJBYrVzUimXeI2AmCOUoGSFkFXGcIMVlKU0uYKSCX=
BnUsysicb6yTWx64fa9FkznJOjxrqwqnYcOGBbNrxubUstpBKmtK42yeG_oRcXYvrtXeeIkPT6G=
OM4M37H8IHO5XLJeh9OzvqwKlOI7tGEd2K31unWO-392Udn6e-m_2sInTWDXt12S0gmTYLL3zTE=
mobohqHrXTcNyzhfre_9HNPXMC_13Ey-dprx3epp8xMn05x86LKvh6es5VaejceR8Ycnxu__bZy=
h2tErt06Y1hZgC9EalIiFKEQlqtZw5CqntP2aJoUk-kxUQSXX6tc1TMsi-uNAHJ7P3dvvw9ufE-=
PfP-318V5fS26hPYVyyQuGO4Jyg-oKAjbADeQHbUyoZg" target=3D"_blank" style=3D"te=
xt-decoration: none !important;"><img src=3D"cid:dcd0c4c6a08b70b98102c6f527=
8e1255.png" alt=3D"" width=3D"27" height=3D"27" norescale=3D"true" style=3D=
"max-width: 27px; display: block; border: 0px;" /></a></p>
</td>
<td width=3D"3" style=3D"padding: 0px 0px 1px;"></td>
<td width=3D"27" style=3D"font-size: 0px; line-height: 0px; padding: 13px 1=
px 0px 0px;">
<p style=3D"margin: 0px 1px;"><a href=3D"http://email.email.datadirectgloba=
l.com/c/eJx1UMtu2zAQ_BrpJmG1fB94aOy6SOC4RRMnvlIS9UhkSpEouO7Xl7JTuJcCBGZ2sDs=
YziF5NG1nx-SnLQZ_X2qKXCGB2OqMC6ASBYe41NYyzm3cagTEDEECZwohVcYQgwqkZCbjICMK9h=
gc09J4U7ajLXzd9bnp0qI_xo2uiDSiEABArCIADGmVy0xipoIRKeLD30BP1vnk7qwzRIg73Xg_T=
BH5EuEmvNPplJ772c-5XYyDUjTGOdsFtl89POydeD4_NR8_-t34u9msX16-n27Wz72rS9PrJWg9=
u3jUXevmX4nzechf933d2Xrs52G6pN62k0_2bprzqRjb3OqIrJY41yh-NMV76-r0__8OW_PtPB2=
aISKbx4isP8uOkK_ClJWWmqoUUApaGWSIggqqqKoMQcKzsLZd1hhlge4C5aDYcr1f5NBToN8Ogc=
PuWL-9Ht4-3iPy9Z9K79f6cnKTtkHKGBERrgLIK6gLULgCXoH9ASiqpPM" target=3D"_blank=
" style=3D"text-decoration: none !important;"><img src=3D"cid:704b68c91ebd1=
4f727a2101a5ca139cb.png" alt=3D"" width=3D"27" height=3D"27" norescale=3D"t=
rue" style=3D"max-width: 27px; display: block; border: 0px;" /></a></p>
</td>
<td width=3D"3" style=3D"padding: 0px 0px 1px;"></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=3D"padding: 0px 1px 0px 0px;">
<table cellpadding=3D"0" cellspacing=3D"0" border=3D"0">
<tbody>
<tr>
<td style=3D"padding: 15px 1px 0px 0px;">
<p style=3D"margin: 0px 1px;"><a href=3D"http://email.email.datadirectgloba=
l.com/c/eJx1UMtu2zAQ_BrpJoFcvqQDD63TFAGcHJoG9XVFUjRjWVQkCkj_PpTdwrkEIDjDwc5=
guIfqEcPg5uqXM1N6sJqDbIGR0mkqFeENKElKq50TUroyaCAAFEhDpGiB1C0iQ2hJ0wikkjQFJ-=
6cE2uLCW2YnUl-iB0OtYnn8qihk6ZBZ2nfUisNUbzDHpELRRQlxpWH_4We3Ziq7381BSDloI8pT=
UvBvhVwn88S_Ihpnd0xrqPdsj-LmZuE-aadCfG0DBCj6G7Rv-PoLUa9FfXrWM56COP6Xo2py_19=
jH5wfo7rtFxa78OSqpdxWbvFzKFzumC7rc61SprRnMLo66__nafWm72ejlPB7h8Ldvdv2QXIXX5=
R6zj2VhGreI8gABRXvOVtjwyYpHlsv40JLjJ9ylSSVmzul03Oe8r05yFz8nT2r38Or2-ngv34tN=
KHO32x3KR9lqhgqoBdhuYK7QU4uQJcQXwAm-GmdQ" target=3D"_blank" style=3D"text-d=
ecoration: none !important;"><img src=3D"https://signaturehound.com/api/v1/=
file/1bcioksl2x9c7" alt=3D"" width=3D"401" height=3D"83" norescale=3D"true"=
 style=3D"max-width: 401px; display: block; border: 0px;" /></a></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=3D"padding: 0px 1px 0px 0px;">
<table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" style=3D"max-width:=
 600px;">
<tbody>
<tr>
<td style=3D"padding: 15px 1px 0px 0px; font-family: Arial, Helvetica, sans=
-serif; font-size: 10px; line-height: 12px; color: #888888;">
<p style=3D"margin: 0px 1px;">=E2=80=8BHardware: Routers, Switches, Firewal=
ls, Wireless, Voice &amp; Video , Storages, Servers<br />Services: Maintena=
nce, Worldwide delivery, APAC region onsite Installation, Rentals, Blind sh=
ips</p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</div>
<img src=3D"http://tracking.email.datadirectglobal.com/open.php?M=3D4269230=
&L=3D1545&N=3D60950&U=3D1220&GX=3D0NmgjWXjqk&F=3DH&image=3D.jpg" height=3D"=
1" width=3D"10"><br/><a href=3D"http://email.email.datadirectglobal.com/c/e=
JzVUctugzAQ_BpzAy3rB_jgQ5s0VaQkhz5UrgYbQkKAgpHav68hrdJLP6CSpRmPdtcz6yzc67qx=
Q_hki95tjWIoJFIIrIpFAizFREBglLVcCBvUCgExRkhBcIkQSa2pRglpynUsICUM7MVPjIx22tS=
DLVzVdLluoqK7BEdludXADC05ZZhLC4Wfo_NUpLkurJRB9mPo2bYuvP9UMSIEjTo61xN6R3Djjx=
t0ca7bKvr7LV81teOUj8VQ5zbqj757syd0_R2QoFj5W2ws06VJwCSs1MgRE5YwyWSpKVIR-7LdX=
MYZ9_TgqQDJ5-7XWfbePH3MPIfDpTq9Zaf38y3DS9dWRndqdllNbTCopm6nj7B1uV9U1XVVY6uh=
m_pxWc-uHl34enOtCF0tuf9BaEIffv3ddq2Wlpu081LMaUJw5SG9glyAwRXwCvwLDHPAiw">Cli=
ck here to unsubscribe</a><img width=3D"1px" height=3D"1px" alt=3D"" src=3D=
"http://email.email.datadirectglobal.com/o/eJx1UMtugzAQ_Bq4gZb1A_vgS5OmipTk=
0IfKdQFDSAhQMFL79zVJq_RSydKMRzOe9WbRnprWjtGzLQa3LQ1HqZFBaE0iU-AKUwlhaawVUtq=
wMQiICYICKTRCrIkYoQalBCUSVMDBXvyLcUmOyma0havbPqc2LvpLeDQKLFLOJQnMEyIFmoPSVZ=
VXirOUVJj9DvRiOxc9fJkEEe7qa9_VJfVm6ajnLhxN23TzZ9S53FfXfV-3th77eZiuhbtmctFbN=
835VIxNbk3AVkfnhgA3_riRinPT1fH_I3vXfI_Hw3EI2GYfsPXPngKUK39LSsupKlMoU14RCsSU=
p1xzXRFDJhNv2y02wYWnB08laLGk3xbZf9HTp8xzOFzq03t2-jgH7PHPNrZrc43cpZ2XEsHSAFc=
e1A30FTjcAG8gvgH2gI4i"></body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/20221208065920.9aa3a290885a1608%40email.datadirectglob=
al.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/=
msgid/linux-ntb/20221208065920.9aa3a290885a1608%40email.datadirectglobal.co=
m</a>.<br />

--0af81d754136316a40c39609925df9cb1d3e1ed30c7fb5937ba5a3de6909--

--98220663a3ed476fe95bb9643cc9c8a33569f2adc2c8addf24203bbaa45d
Content-Type: image/png; name="95715f1d0ddd0e982c17a685e469dacd.png"
Content-Transfer-Encoding: base64
Content-Disposition: inline; filename="95715f1d0ddd0e982c17a685e469dacd.png"
Content-Id: <95715f1d0ddd0e982c17a685e469dacd.png>

iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAADp0lEQVR4AeXBLXcj1wEA0JvxgAb1
wcIJC8uYBXnHrGzVX2CJla2NA6RlZbZhkLS/YBWUMj+xsExgUUXDHtygFhj47LFn5o0+Nj5H937l
h/85JYUTUzgxhRNTODGFE1M4MaX9NGg8FxG9QqXxAuaYInjZHAn3uEPySpTGmeIWwbCAOd7hBgEB
b3xug4QW0ZGV8i0xNV7AUrfG59b4CStHcOZiIcMC176MbzHBNb5Gi08OpDCswdyXFzDHfzFxIIVh
S3+ugI/4iGBPhX4TVF6HCR5Q2UOh35XXpcavqO2o1K9xGAktNp57gwqVPAEfcY5kpFK3gGB3CWvc
ozWsQoMrNPpVeMC5kUrdartbY4Yk3xYrrNDgFrVuNRZYGKFweHf4B5LdRZxjpd8ctREK3VrjrXHj
cGaI+t0aodAtIRlnZliDBg1qwz7o16CRqdQvYiLPGkm3W1x7bov3WNndFaIMhX4f5PtNtymuvazC
EksEz10ZNkWQodBvja08UbfKsCkeUHmyQCPPRIYzFwsDfsPUsA1aL9tigqDf33CNCf6Fv8uX8JMB
pWERCUG/SrctzjHBWzQIutXGq2Uo5QmGvcVCt4QVVh7VaPAdGlT2U8tQGtbIU2OCtTwtWk8qTHCF
2pEUDmuJ2m62uMM5LtEarzGgcFgBD5jaT8Q53juw0uEFLPEO91gj2c3Co7kDKR1PjSWWWGODiNY4
C7xBY1g0oDQs2t8EE08iNoiIhn1A4wBKeRKCPC0SGt0aNJgjYY0bJC+LhrUylPJETAy7RPQo4AG1
fgFTj2ZetjWsRo1Wj0KejWF3iJ4kXKKVp9KtkufWgEKetWEbzyVcYmXYRrdanga1HoU8W0T9Ki9L
mGGGrZfdYaHbW/mu9Cjlu0ej2zvc6bbCCjWCJy2SbjWm8jV6lPKt0aL2sgpLzPRr5QtYGqfWozDO
jX5TLBHsL+ABtQM6c7EwwhYB3+tW45/4HVt8Mt4UP6Oym/c6lMZ7jwa1bgFL3GKNDSK2ujV4iwkq
R1IaL2GGBwT9AqaYehJ9LqB2OK0epd20uMQDgnEaxxX1KOyuxSWS1+WDHoX9tPgG0esQ0epR2F/C
JW6Q/LluDDhzsXAgv+BH/IEaf/FlzfBvA85cLBzQJ0T8iP8goHJ8M6xkKB1HwgorBNRo8FfUPrdB
8miOIF/CDGuZSseXEBENW+Ea7xB0S7jHHZIRSq9LwgILNGg8FxHtqPR6RUQHVjgxhRNTODGFE1M4
Mf8HOvvcO4lQHi4AAAAASUVORK5CYII=
--98220663a3ed476fe95bb9643cc9c8a33569f2adc2c8addf24203bbaa45d
Content-Type: image/png; name="46278429b8789746f43ac394c6a80eb8.png"
Content-Transfer-Encoding: base64
Content-Disposition: inline; filename="46278429b8789746f43ac394c6a80eb8.png"
Content-Id: <46278429b8789746f43ac394c6a80eb8.png>

iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAABa0lEQVR4AeXBsXETQRQA0MdnC7jQ
4ZUgGmDOHagEVAIxgVBIppTI6sDuwCrhSqCEI3NmQsaDZkCru5WY/947X15lEpIJyRTzWGNleSOe
XKC4zBoP6LQzYYMnFUK9AY/otNXhEYMKod6D63pQIdTp0buuHr0zFXV6p42YzK/Dyp96/HCGYl4f
LOfVDEIyxbIG9Y4WUCznGYN6R9ybWVjO4DKDBYRkQjIhmZBMSCYkE5IJyYRkQjIhmZBMSCYkE5IJ
yYRkQjIhmZBMSCYkE5IJyYRkQjIhmbCcg8scLKBYzgYbN6Zor8MndJhwwKSRoq0VntH5bYt7jBoI
bW3ReavDViOhrbXT1hoJbU1OmzQS2npy2kEjoa3POHrriJ1GirYm3GOFDhNGDRXzWmPy7zoM/q4z
k2Jej25cqHN0G47OFOrtXddehVBvh9F1jNip8N7Hryq94Dt+4g53ljfiGzZ4UaG43B57/4mQTEjm
F1BxM47nKOn1AAAAAElFTkSuQmCC
--98220663a3ed476fe95bb9643cc9c8a33569f2adc2c8addf24203bbaa45d
Content-Type: image/png; name="85b9c556ecc80dde80f62c6140a8cf77.png"
Content-Transfer-Encoding: base64
Content-Disposition: inline; filename="85b9c556ecc80dde80f62c6140a8cf77.png"
Content-Id: <85b9c556ecc80dde80f62c6140a8cf77.png>

iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAADvUlEQVR4AeXBoXLrVgIA0NNbg0CV
FeoT1B/o82Nldb4gDiyKzXZmQWxYZAUust8X1HDZU9lC9Q/0WOGli3ZBQCdzr18kWcrObM75xt//
4z0J3pngnVl4GwUqVCi8FNGiRTSzhfmUWOEOlX5afMIZnRksTG+JB6wMV6HCAWc8oTGhhekUOGBt
GiuscMIW0QQWprHEbyhMb40VbtG40rd+3LnSGr/hxusi/oUOHToUuPF1N1jjC1pXWLjOGkdf1+IT
zujklVjhDpXLjp6djLQw3hpHlzXYo/G6DjVqLPGIpbyjZycjLIxT4eCyLWrjNGiwwUHeAS1aAwXj
HFFIRfyA2vVq/IAoVeBohGC4HSqpiI9oTafFR0SpCjsDBcMUeJB3i9b0WtzKe0BhgIVhNiikajS+
rsQDKi+1eELnsgY1Nl4qsMFOTwvD3ElF7F1W4IC1vCU2OGGLKG+PNQov3WGnp6C/CqXUE6K8Ap+x
9ro1PqOQF/EkVaLSU9DfSl7tss+o9Ffhs8tqeSs9Bf19kDojytuhMlyFnbyIs9QHPQX9VVJ/uOzO
eHcu+0Oq0lPQXyHVyFuiNF6JpbxGqtBTMI/K9SozCOZRuF5hmFIPwf+PTg/BPBrXa8wguE4pr0E0
XkQjr3SFoL9W6meXPRnvyWUfpBo9Bf01UisU8mp0hutQyyuwkmr1FPT3u7yNvIhbRP1F3CLK26CQ
+l1PQX9ndFIPKOS1+IjW61p8RCuvwINUh7OevvXjzgDfYemlG/wbjbw/8Q988ex73HgW8U/8il/w
p8v+hp+kntDoaWGYGg8ovPSAEzqXnXAyTokHqYjaAMEwEU9SBQ7mc0Ah9YRogGC4GlFqhaXpLbGS
iqgNFAwXsZV3NL2jvC2igYJxTmikSuxMZ4dSqsHJCMF4W3mPKF2vxKO8rZGC8VrU8o6ud5RXozVS
cJ09Oqkl1sZbYynVYe8KwXUitvIOKAxX4CBvi+gKwfXOOEsVOBruiELqjLMrBdPYIkqtsNTfEiup
iK0JBNPosJd3ROF1BY7y9uhMIJhOjUaqxKPXPaKUalGbSDCtrbwNKpdV2Mi7N6FgWi328o4uO8rb
ozWhYHo1OqkKG6kNKqkOtYkF04u4l/eI0l9KPMq7RzSxYB4NTlIFDv5yQCF1QmMGwXy2iFIrrLDC
SipiaybBfCK28g44yNsimkkwrxMaqRKlVIOTGQXzu9ffvZkF8+uw97o9OjML3sYOJ5c12HkDC2/n
Hl9wh9KzDp+w80YW3tYOO/9DwTsTvDP/BW8p5b8GVGkWAAAAAElFTkSuQmCC
--98220663a3ed476fe95bb9643cc9c8a33569f2adc2c8addf24203bbaa45d
Content-Type: image/png; name="0f51b1d4c7b9368d786515ed91a00ac9.png"
Content-Transfer-Encoding: base64
Content-Disposition: inline; filename="0f51b1d4c7b9368d786515ed91a00ac9.png"
Content-Id: <0f51b1d4c7b9368d786515ed91a00ac9.png>

iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAYAAAA6/NlyAAAD1ElEQVR4AeXBsXHjVgIA0OdvBpsd
OjiWgG3AA2TOlqpggQpWCj0XSFsBV5FDwBWIWwF5FeiXgMvusu9ss3PAgKPhh0iKpCQP3/vJv/7v
kgQXJrgwwYUJLszE+zbF1NqAwZEm3pcCDT6hkrfCd/RIDjTxPhS4xq3dKlSY4xu+ItnTxNsr8YCp
w12jQY1oD8HbavCIqZcr8IjGHoK306BzOh0qO0y8jQad5w1Y4E9r/0CF0rgHfMRgxMTra9AZN6DF
Sl6FOUrbCsxxZUTwuhp0xq3wESvjVqjRy5uhNCJ4PQ0643rUSHZLaBHlfTEieB0NOuN6tA53JW9m
RHB+DTrjerReZkBvW4FSRnBeFTrjerSO813eVEZwPlM8GNejdbwkr5QRnM8chbwerdMYHCA4jwoz
eT1apzOVl2QE5/FZXsSN0yrlRRkT59HIu0Ky1qDDCjeIXuaLvCgjOL1KXo/B2gydtQqPaBzuGlPb
IpKM4PRKed9tzG3r0NlfiVt590YEx5nhDqWNQt7KxlReg2u7lViisC1hYUTwcg0ecIu53ZKNZNwc
lXEllijk3SAZEbxMg85hpjY+YmFcJ6/EEoW8BXrPCA7XoPNUYWOQV9kYcIVW3hSNp0osUciLaO0Q
HKZBZ1tpI8r7bFuPb/I+2yiwRCEvokayQ7C/Bp1xlbWIZFuFyravGGyrUNgo5EXUSPYQ7KdBZ1yP
lY1e3gMKTyX8Ia+0ljDYFlEj2VOwW4XOuB6tp+7lFXhE6amFvMrG4KmIGskBgucVeDCuR2vbgG/y
pnjE3EZ0mIgayYGC581RyOvRGvcV0bhrlPb3b2sRNZIXmBg3RSOvR+t5CS2WKORFa1O73WGB6AjB
uFt5ETf2E1FjsK23UcmLnoqOFIybyWuR7C/iIxY2Em5sfJEXndhEXonCtgWiwyVcoUKFHsnaNUrb
BgxObCJvKu+746ywslHiVt69MwjySnmD0ymxRGFbQu8MgrdRYolC3lckZxDkJedTYolCXo9vziTI
i/I+OU6JJQp5ETfOKMiL8mZersQShbyIGskZBXkJ0bYprh2uxBKFvIgayZkF4+7lzVHaX4klCnkR
NZJXEIxbIMlborFbgyUKeRE1klfys1/ujPiB/2Fm2wfMUOFP/Bc/rBX4Fb/jGh/kRdRIXtHE83p8
wkxehcrhImokryzYrUV0OhE1kjcQ7JZQY+V4C9RI3sjPfrmzhx/4Az+hxAeHSfgNN/jhDU0c5g49
bjFD4XkJPe4xeAcmDjegRYsKFf6JqbUB/8EKK+/MxHFWWPkbCS5McGGCCxNcmL8Ac1b0ruwrrgUA
AAAASUVORK5CYII=
--98220663a3ed476fe95bb9643cc9c8a33569f2adc2c8addf24203bbaa45d
Content-Type: image/png; name="e9d2074b3fe3b7401cfe968b8077b2f7.png"
Content-Transfer-Encoding: base64
Content-Disposition: inline; filename="e9d2074b3fe3b7401cfe968b8077b2f7.png"
Content-Id: <e9d2074b3fe3b7401cfe968b8077b2f7.png>

iVBORw0KGgoAAAANSUhEUgAAAFQAAABUCAYAAAAcaxDBAAADjUlEQVR4Ae3BvXnjZAAA4Pc+VNDd
twFighMLEHkDZ4LYHd1dagpfOjonFWXMBGcmsLKB2MBsoA2guOIeHuAsWZ/kn+h93/j5L5N0gklS
wSSpYJJUMEkqmCQVTJIKJkkFk6SCSVKZ85KjQIF3iD4rfdGg9tkef6JCjcaJZU5vjhvMkTssovRP
K5/VqPAbaieQOY0c77FAlE6BAh+wxxM2aIwkM64cKywML8caKzzhEY2BZcYRscIH44tY4T2e8NGA
MsOb4xnRaUWscIdb1AbwjR8/GkjEr/gF3zofET/hDSqJZYaR4xMK52uFd1iikUgmvQI7ROdvjhwz
NBII0iqwQ3Q5CuwQJRCkU2CH6PIU2CHqKUgjxw7R5SqwQ9RD0F/EJ0SXr8BaD5n+1iiMa48tXtD4
bwUi3qFE1M4Cf+DRETL9zLEwngoPqBxW+WKHUntrVKh1FBwv4tk4Gtxihso41o4QHG+FaHgNZtga
V4mFjoLj5PhgHEvUTmOlo+A4K+PYYOt0cix0EHSXY2EcD05vpYOgu4VxbLF3ejnmWsp0d2ccL7qJ
KFH4t1w/d9hqIdNNgdw4Ku0tsEY0jDkiGgcE3dwZT62dOZ4RDWuuhaCb0vlZG8eNFoL2IgrnJSI3
jlILQXuF81MYT47ogKC90qRwQNDeW5PCAUF7hUl0QDDp4q0DgkkXhQOC9gqTgzLtNYjSeMBH/VV4
4+tK7IwkaG/vMhVGFFy/76Tz4oDg+hVGFLT34jLl0tk7IGivcZly6ewdELRXuzyltCoHBO1VLk8u
nVoLQTeVy5JLp9JCppvfUervDje+buawAmv/L5fOixYy3Wyx1l+OXH8RpeE12Goh6GaP2uuz1VLQ
3ZPX50lLQXcbNF6PCrWWguM8eT0edBAc5xGN61eh0kFwnAb3rt+9joLjbVC5Xo+odRT0s0Tj+uzx
4AhBP3vcuz63aBwh6G+DjeuxRO1IQRpL1C7fBhs9BOnMULtcGyz1FKTTYIba5dlgKYEgrQYzVC7H
BkuJBOk1mOHR+VtiKaHMcO7xgmdE56XGErXEMsPaosYac+fhEQ9oDCAzvD1uUeIZudOosMTegDLj
qfA9FlghN44KD6iMIDO+DTYocYc5orT22OIJeyPKnE6FCkvMcYMSheNUeMEWtRPJnIcttr4otVPj
B9TORHCeKu00qJ2RYJJUMEkqmCQVTJIKJkkFk6SCSVJ/AwFnsN4Wg46cAAAAAElFTkSuQmCC
--98220663a3ed476fe95bb9643cc9c8a33569f2adc2c8addf24203bbaa45d
Content-Type: image/png; name="21408cee2de3f3b1071e63254df5bb00.png"
Content-Transfer-Encoding: base64
Content-Disposition: inline; filename="21408cee2de3f3b1071e63254df5bb00.png"
Content-Id: <21408cee2de3f3b1071e63254df5bb00.png>

iVBORw0KGgoAAAANSUhEUgAAAFQAAABUCAYAAAAcaxDBAAADnklEQVR4Ae3Bu3XbVgAA0JsXFClR
pgszgekFImgCUxMYnEBSnULiBKImELUBNIHgCQxPYGSDt0FSsNDxkWUT4CP4Ce79xd//GqUTjJIK
RkkFo6SCUVLBKKlglFQwSioYJRWMkgpGSQWjpIJRUsEoqWCUVOa0TFDgHaa+9QkNakQ7kjkNBS4x
87bCixUWaG1mghmWfiLTT24t2q8cD5jppkSJJRaIvm+CG5RY2ECmnztrc/szxTNy/V2hwDmitRwz
fMDMWsTSBjLd5Si9mBveFM/IbW+Kr7jHGQqv3SPaQKa70ovS2txwJnhGLp0cN76vxq0NBd2d+VaJ
B8N5QG4YDS58a+IHMt0VXiutze1WicIwGpwjYoqPmGGBlTdkust9X4kJLhDtxo1hNKjxgAK5tRVW
fiBIq8BnTKU3w8QwprjCDLm1GnM/EaQ3wWfcSuvM/jS4sIFgd27wGYU0CvvR4BzRBoLuGpub4hkP
mNjO1PAqnCPaUKa7BlPdlCixwgKtw7fArY4y3T2h1E+JEjXuUTlMNW71kOmuQouJ/goUiKjwhBrR
kcv0s8CD7eUoUVqr0eALWtReROQOXKafFS4xlVaBwmu1IxH0N0c0jAK5IxB0V1prcI7o9LR6Crp7
wFfcWTtHdFr+0VOmnwmucGUtOi2tnoLuWq/lTkurp6C72umr9RR09+S01bYQdFehdboaWwj6uXe6
PtlC0M8SjdMTUdlC0N8c0WmpbCnor8GF0/JkS8F2arxHdPxaVLYUbK/Be9SO26MEMmm0OEeBS8wc
n6UEMtuboPTiC1pcOR4rRAlkthdx43hFLCQSbC9i5Xjdo5VIkMYC0fFpsZRQkEaLheNzjSihIJ0l
Vo5HhUpiQVpzrBy+FnM7EKQ3x7XDdoFoB4LdWOJP1A7PHI0d+dVft3Yk4hGP1n7D7/ZrgaUdyuxe
i2svrnBneCvc2rHMcHLc4MrwVpgbQGYYJe6QG94CtwaS2Z0cJS4xsR9zrAwok1aOGT5gZn9aXKAx
sMxmCm8r8AemmNq/Fa4R7UFmMxF3KByuFnPU9iizmQbnmOEOE4cj4h63DkCmmwoVSnxEYX9aPGKJ
6EBk+llhhSkuMUNuGBUeUTlAme00mGOOGc4ww0Q6ERU+oUJ0wDLpVKhwjRwFpniHHFPk3hbRIOIL
GjRoHZHMbkRUqPzPBKOkglFSwSipYJRUMEoqGCUVjJIKRkkFo6SCUVLBKKlglFQwSuo/B6XLWeF8
p6UAAAAASUVORK5CYII=
--98220663a3ed476fe95bb9643cc9c8a33569f2adc2c8addf24203bbaa45d
Content-Type: image/png; name="dcd0c4c6a08b70b98102c6f5278e1255.png"
Content-Transfer-Encoding: base64
Content-Disposition: inline; filename="dcd0c4c6a08b70b98102c6f5278e1255.png"
Content-Id: <dcd0c4c6a08b70b98102c6f5278e1255.png>

iVBORw0KGgoAAAANSUhEUgAAAFQAAABUCAYAAAAcaxDBAAACQ0lEQVR4Ae3BUXEbVxQA0NM7C2Ah
LIOIQWQEVRFERtD6ux9WEBhCXARWEGQZZMNAZSAG7Uc/Ohk3jvb5KtOV7jk/+f0vJU8oqUJJFUqq
UFKFkiqUVKGkCiVVKKlCSRVKqlBSdXJs8TNWGHDAhD+wd0U6r9PjCWtfGzBggxG/4OgKhHY9PmHt
ZWt8Qu8KhHYfsHKaFR5cgdBmhY15thhcuNBmo83GhQtt3mjzxoULbXptehcutJm0+eLChTZftJlc
uNDmEUfzHLB34UK7W/PcuQKh3R7vneYWe1eg8zo7THjA4LkD7rB3JTqvt8cea6z9a4/JlenkGTG6
cqGkCiVV53INGLBC7x9HTDhicgaddlsMTjdi9G078+w81+M3vMPg+/b4iD2OEnTavcPaPKNvuzfP
ztd2+BW9022wwQPu8OiVOss34Akr7Xp8wFvc4ahRWLYVPmMlxxZPXiEsV48n9HKtsdMoLNcDBudx
j0GDsFxb53WvQSjfskVvplBesjFTKC95a6bOZTnggAMGDBi0W5upcxlG3GHy3BoPWJlvMFNYvkfc
YPLfRtxg0mZthrBsB9z6viNu/QBh2d473YTJfL0ZwrI9muej+VZmCMs1mm90ZmG5Dv6HwnL9ab7R
mYWSKpRUoaQKJVUoqUJJFUqqUFKFkiqUVKGkCiVVKKlCSRVKqlBShZIqlFShpAolVSipOu3u0Dvd
0ctuzHPQ5sY8BzN02k1yjX6M0RmFkiqUVKGkCiVVKKlCSRVKqlBShZIqlFR/A5wuVzqA0Sl9AAAA
AElFTkSuQmCC
--98220663a3ed476fe95bb9643cc9c8a33569f2adc2c8addf24203bbaa45d
Content-Type: image/png; name="704b68c91ebd14f727a2101a5ca139cb.png"
Content-Transfer-Encoding: base64
Content-Disposition: inline; filename="704b68c91ebd14f727a2101a5ca139cb.png"
Content-Id: <704b68c91ebd14f727a2101a5ca139cb.png>

iVBORw0KGgoAAAANSUhEUgAAAFQAAABUCAYAAAAcaxDBAAACkUlEQVR4Ae3BMXLjVBgA4I8f9auS
DnMClAsQ5QahpLNPEFNTOFtSuaYiewPfYL03EDfQdpQq6WB2djKZDIz8HN7Gkv2+7yu//K3IJxRZ
hSKrUGQViqxCkVUosgpFVqHIKhRZhSKrUGQViqxCkVUosgpFVqHIKhRZVU6jQS1djcZnHQbpevRe
SSWPFgss8AaNJ63pGdB58sFnHXp0Xqjyci3ucGt+arSetJ4bsMNb9I5QOV6N33HrfNVYYom3uJeo
cpwa79G4HBt8i5UE4TgbNC7PEmsJQroGa5drg9oBId2dy1Zj6YCQrlVcOyCkWWChaB0Q0iwUn9So
jQhpWsWjxohQHGthREhzrXi0MCIUWYU0tdfzHXam69qIkKbxenr8iBt0ZiZM1x5XWKE3E5Xpe8AO
a9yhdlq1EWEeBtzjCg9OqzEiHNaajh4r3GBvgirztMceS2ywMBGVeXvADmvcoXZiYf4G3OMKD04s
nI8eK9xgcCLhvLTYoHYilfOwwBa3TqwybzXW2JiIynwtsUVtQiqHdaalxRaNCaocNpiGBba4dVq9
EZXpq7HGxjT0RlSmbYktajNRSTOg9npabNGYmUqaDq3X8R6t6eqNCNPTmraPRoQ0vSJJSPNR8Whv
REjTKx4NRoQ0neJRZ0RI0yk+6RwQ0u0VeweEdO8U7xwQ0j2gc7l26BwQjrPC4PJ0WEkQjtPhBoPL
0eEGgwRf++Hekf7Eb/gGjfM14Ff8hL8kqrzMgBV+RosG36NGg9q89Ogx4A/ssfcClf9nwA47/61B
7bnWuDdoHOeDw/ae69HLrPJldf5t74yFIqtQZBWKrEKRVSiyCkVWocgqFFmFIqtQZBWKrEKRVSiy
CkVWocgqFFn9A/qxa9xGeLfXAAAAAElFTkSuQmCC
--98220663a3ed476fe95bb9643cc9c8a33569f2adc2c8addf24203bbaa45d--
