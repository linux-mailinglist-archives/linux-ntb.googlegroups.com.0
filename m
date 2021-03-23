Return-Path: <linux-ntb+bncBAABB6OH42BAMGQE4IUTI3I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BA134597D
	for <lists+linux-ntb@lfdr.de>; Tue, 23 Mar 2021 09:16:58 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id 50sf781204otv.6
        for <lists+linux-ntb@lfdr.de>; Tue, 23 Mar 2021 01:16:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616487417; cv=pass;
        d=google.com; s=arc-20160816;
        b=CzzhCyWg/hayFE2gLi1iOAFNMV6umneo8k9H4oyzvoMlyWSQ/BhGeTHWk04E5RFkXm
         B+6OrlwBM0lSwr07uCrkShjU6bTl4gPZEY5pfNQOw50VWnfuSBc8AlOI8JGONXrCnOMv
         mTp08IrYVfid2j0BB2x04xahwS28JFXe6+rUtjqxeNvEuBzU4VLA3KOzQRtndyLGs/y3
         IElZtVA1fYHULjS5CvUHCETzsVYmoq8VSBV2eMVnDE6JPV3XTfzzYBPaoPf2APJ0g85o
         HBm7Q5ME9K+65hKy8pPWhdvVXPY2ZbXRae8seZ2udNp5x6SEUrIJ1XJXlxp9B/OvLbpf
         oJXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references
         :content-transfer-encoding:mime-version:subject:message-id:reply-to
         :from:date:dkim-signature;
        bh=uj5NZOkhYckuhj9s4KvXAjhB5yLR0iKpozukUETdRIE=;
        b=cDvsdrykQ6smW+XfFUEb5keyDrMyxZJ8Ym4c7+fCKu4YuppO2JA6mJZg5VlOU48Sci
         4HjtUoAwMFPFYkmx2n2g1eZRmfKvBni8mWEWvnzqQPDhs+zvVHqzD3XqKp03mH5zguma
         oLPL6cbLG+pE2+PeGeCZ3vEE4NXhJeCzXenONw0HUYVQP26UU+kWzPbPN3WGcf1AAbeM
         rRz2ki0Gi2kJgoR5kO5c4a0N3yT1dOb3zvkWkqTYQHyNSd7np1nDf3yXCZuHUg7r3XV4
         yUXLlrBr/6L/2hdahe0RQa6XsuT3SA8FiDnIUMSVq2IUF57K1wlJP30//bIKDiOazNA8
         p9WQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=SnppRmRE;
       spf=pass (google.com: domain of mariamsterbenc@yahoo.com designates 66.163.187.175 as permitted sender) smtp.mailfrom=mariamsterbenc@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:reply-to:message-id:subject:mime-version
         :content-transfer-encoding:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uj5NZOkhYckuhj9s4KvXAjhB5yLR0iKpozukUETdRIE=;
        b=fmHv1P4sBaGPLwyo+9HoSlfkj7Fu0qZFVTDpCDSwsrL5BvFjtPtQzQoXPS7Fu5H8LK
         0lyUfHGrxUPxJf2GJL8MTZwaAP6XZqNuZaRZOk9MNfQB+Ozc0J/Pj/sK3vxrr+1XsqdJ
         VegDTU+6OCeXEYETVGuIIDdtkXW6sKykHln7lRPHdM6UbbwPL0ZC7jadwz2brsWwn5Nm
         t9u1AJzZEOWnm2tEDt3NGP9kXu0fBna4QfkB3prtnlMttWAQD2NyGuwXj93qyleioINl
         xvWKPfQkjcerf8tz8+kFoc1R62yvLraL7Mk1KQGAvZdntX7RVb7SN6HlKQahyhLGixdS
         ObbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:reply-to:message-id:subject
         :mime-version:content-transfer-encoding:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uj5NZOkhYckuhj9s4KvXAjhB5yLR0iKpozukUETdRIE=;
        b=feHk7zZeJLMepcLrUIVsi5AVz48jUrIRE3vnF6J+f2A6ufUvmK1q3lPez7EDyuZzdQ
         Sbc3I+cHrhdo6e3t453OFVzFXXAqdz+FlCHFiA77dx6hx9LFY4N/dZbk43GuzZu7IrpB
         Sddig7zfHXCWJ0IduE5H2Sc3ShbGQmYTx1BtMb6kHun8cFR4x6QvnzE6n9FTeU6PEz5J
         msOQcDaJ36nmZLUYO8OWb3KqnZkI1K4iAMd8RrSxaojcvNTcu5VX2lS1H7am2KlP+NvL
         ZXWe2XOMN3xZrEiVWkoNlE+SgT1jS2oB6yUYuXv5l2BHWu+bQxFk6wudwuEns6BIURhd
         F0vQ==
X-Gm-Message-State: AOAM532za0b77+7lWF/qXQ02o/4RLJuCtnmthRifZ9Oo8W9b9BXRfO+L
	p9PvPeANvrMF7TSK6bVHgzg=
X-Google-Smtp-Source: ABdhPJy60onrYPbORsHub1Y1m7TRLVYFpSYpYJlJ+SZmwUk7TlubHLfj4U/9bxm6NvsZNR2cDVIyyg==
X-Received: by 2002:a05:6830:2312:: with SMTP id u18mr3448974ote.325.1616487417517;
        Tue, 23 Mar 2021 01:16:57 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:71cf:: with SMTP id z15ls3659312otj.2.gmail; Tue, 23 Mar
 2021 01:16:57 -0700 (PDT)
X-Received: by 2002:a9d:7f1a:: with SMTP id j26mr3360366otq.244.1616487417263;
        Tue, 23 Mar 2021 01:16:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616487417; cv=none;
        d=google.com; s=arc-20160816;
        b=QYCo8X9nnHRleuRLn12yZaT1j7qg5Zv8E0dYy71+Qda910qDR78Bxi4M8p2RYANKPS
         0P9MhNW2cjBFxsT3rNuWGN9o3IO2EVwr7sEWIkqpczhvdLK004Lfq83bW7WCIMRZHokI
         w8xUrQPIusFeyVOR6yK0Jro1sv8Z49SDNJSu681+pVLST3O6WbjRfQUDK3e+0aQja6J5
         lPfREoQUkaqDB+xh/yrSzUA94kkpkJIvHr7gYBGGt+vlLC+HrbVKpu0B60LErcPdEosD
         GeQieqmECIVr1R5YePhzyMgzFSPmbNHxUXEFPyFjZeontB4apLiqClYZIk8wS4aIBwV1
         GXHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:content-transfer-encoding:mime-version:subject
         :message-id:reply-to:from:date:dkim-signature;
        bh=JDwVg1YeWij1bzVg6CXUMNyKMzRE7Mu8E1jiUyK+aHk=;
        b=yp1f0Ziyu2PIZw5X5MF04mh83e35NsfjWCted/0qfrMJRqkNLG/Tiiphv0BBRnohoq
         hn46bxPWWlEsEo3LDReoI7O+2hSjNyM4APOV52JuCQzHnDAcuD1Cg99ohOefrERRzTpn
         Uia3J5/JazTc/BlIyCYgYfUT1opUULJxUdxBzETyvVuNcvcLv5ThnaV7DpL3TvZFvrv+
         mix5P2cuoia5qM3OOLf2V6XmdRpBz8jU5d5Dus/dVz7Vm00cnbJlWecUoO/at73BW3jP
         IdFIkKKRHP7V2LeQ7im1xBt0DwJRoxbLYLXGzTfoyeZWHADnIbmHTj+tEvMuXbU6My7y
         LZWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=SnppRmRE;
       spf=pass (google.com: domain of mariamsterbenc@yahoo.com designates 66.163.187.175 as permitted sender) smtp.mailfrom=mariamsterbenc@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Received: from sonic316-49.consmr.mail.ne1.yahoo.com (sonic316-49.consmr.mail.ne1.yahoo.com. [66.163.187.175])
        by gmr-mx.google.com with ESMTPS id y26si1073954ooy.1.2021.03.23.01.16.57
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 01:16:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of mariamsterbenc@yahoo.com designates 66.163.187.175 as permitted sender) client-ip=66.163.187.175;
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1616487416; bh=0C7NXZ/+TaA+wI1hag+WPtlW5h1DGfOGHcXsoHm4PQK=; h=X-Sonic-MF:Date:From:Subject:From:Subject; b=B9H8z2P/b1sA9FgqHK5dBOH+vceopW/+oyUFQ5YhE8+ubiWwcEjA73lq5FO3PpC9wpIU4YLjrGstx01MBli47cbd0UGfX5fOvBdka9JzZ4Vkcc4+7ccPy2EkTuGQz/Y27RGaljWJqwO8Iqcj8qh0Ft36YwM+vVVUBOAtRMvrGr//FdyApm1vF5meZnvpAVMWK7RxFumekDbE9LvKECmm1hnWSoKn3JhcHYagsQHfIlQu3nE9TA9J8N9LUNs/JV9N50OHZy2l4jBC1PxW2tp2OOGNZbwA/1XNsZclj0NoQmH7CaH/8dvrXTE6FJ6Bc9QYZPanDuNtsG9av1dDOUUWxA==
X-YMail-OSG: w1mgi24VM1mnsiyTe6_evs78IX5YrrMFMm1S1oPNnyzpw9zEXgF6rvZEhEywuEk
 xln.EdRcDHrkyXaSN_buUcvk3EEokEr0VCrXSlo0XZ4xpLuYkgZm6DlDqOK.LLXXEW5Y_2E67d16
 CHa5aVqfTXkz0jK0f9iwvcyqx8zFEDNTL38wtcBG2FDrtvWHdagfdECSBq6k6Wgv7kH6lOmmF3A7
 _DysRKoGyTBVe_AYRNSyzua8tENvb0A9bqkn4QcgbmCbhfCphOi4PE.u02UvDNXHc3WIv9VB2Oto
 3VJpdFYs4fDr9_2JeOWf_jXQ_A5MVHgvm4CeFgh2agAcTPlztsQG8v2OLB09aJmiRje0rtM2agFV
 XZFFqb01K1rAvxpk_srN.3cqpttP96VM8RAM.Ku5WcKqU52987AByiHfAjfXpGIC.WLdWcu6xtY6
 ouVbqOFR4ssOlTnLw_62Mr06uwzPzkqzTtO_CWpJvIclBayKzQw_FyoVT7UUVdmJnMtEc7AkNIlc
 5i59ECvMuM_oU7bf.CDDTzz2q2Y7XBqAjF97fH.e6sHMTUz6itAkihvIPwLbMY.4gCjeRfKPvHSl
 exU1Qiya4xqsHN4Wi8ZbDwQrZzPoxrqmy8W4MJ8ywnP.BK7bsazSPks6vvniYFXwA2PaE9aB.1rS
 mIxv8Ycov14K9.wpeC12YtB9GEm1__qQFeMbiHwpFeB3V5ea_s4lFFt.HJYDW2yl2j60ix_mQChF
 EmcvFODoAmzRnNPCoP0AdA6Cm5rxkcCbmcFvXVZizQEJ7yFba_CwDv9YWzMv8Cw817qQUEJMYOdP
 d3x7vAvugT1RH7VyNYAmINePDsJ6fnfr8_2tY4AZlACD7SA4yhPQqnDrMmUcSC5YSyEQWYTJIJ8v
 rEBsfJ_WzAVWtYCuprxJY.3ei4KV02zks4vfFQmxlXm_ablIxnVrmFDmHlqlEdoltVA1cQ3BZK_H
 Agj3eDvawIB6Yj5OJJ6YJbPuVqzNncBfo25nyOiSh7na3FrNtBzwgGqWnUvA8vi6csj5q69T_aU_
 J6AmkYKJ4kDHUZ686F1sJbqpKPfqUslS8cPuR3Od1edHNkNCD_DiViVf9DYT1ICqhHJr0t3.YDtw
 _H3Fd2F.o3kZxkIc82Z65DH8bEn5Avp8PrUpJ5WbjUbDepIshLoaH3VL_7ZkxIYFdxLkFOOw9zh.
 TWBXa_D4TGnq3N30OfzJMmIPsKphjO_NB4ZYdVejhrj_hrZ.zPKSv_KzPFi1IZCu9.JISI7f_3hr
 5.cbumP5TV_h64JWagZmcC5tB.05BBytKrpcp7JA6BPrdYcxttrVWVM0XPIuPaHnaxJEwWQmUSok
 Kr.kz5sN_WkEzWKPlE0Yhl5pv9WdmLlHAg_DWRZtZDIO_2Wh49HcSjeunsiaE8Gh1dnZpJPIzLKe
 h.7R41qfSCi6_j.YOCls5PfPTkt6i9wivviYeGBrIp82HxI_Z9wxW21x8bdWNfa622v5KXIGIrWm
 dl_nmL5P0A7BTCDlroqvJu_DDpiE8H61ed3SSA46pDs.I1ZfzramM.apE2D4WN1mW4oIUBi4Y.rV
 mcNJBLECLm6OgMXL8iRLBvvIZ5Efe7baCVVQkSWQ8B4t2u35qbKYQUvZJ.R4v9.Qt3eNIkWeG3Fz
 shhR7j7Q814oNATjzvqkfpoTigSwZ07f_eAaQ.dtxG.7TZ06b5VXH1gHdQ6vjkUGSa6M.GgLqz.H
 2fQupHXElW40J_LmAiPqY2Tpd0M0jzNMl.sRNuvgkYDPPNQ3qpIVhWFi7wRhZqJEhGthc33NEkxv
 KZ4IA31EBr3iOy8B3cimeMQpxM6.8thq5EMeIOLG1O4Vmq9GEnVNT3VuVkJKjaDn_CnfMpSHu7AE
 0Ggb_.TIvS3vezUILSBFNK4jKPkmy3BymLNKe2BUbHQTD0ff4dwaYE5SXW9KSIPoxltXxEtnnqiP
 SGIUJYi5LWV33Uy2puoZ9HnpnGOVdwn7ETV_B0iYy77nLBzOsVaVXzCQfE3f4F4GuJjkFGHYq9MJ
 VFQ3pD4uvz7HWJcb3w.kJ.5llpcWHWYkc76mEmXuP99cD0nl3c_ayao7k7dIUG.UJzuHmVZoZqUb
 dbq48zIU8Qa6T2djEowSKu1kjsMPXCIgD1qEDdZnCK.Cpf6XBXhjX5KEu3ZZ8O207BJV9it7byah
 kD2RUdajkFElhAnOfwD2DAL1P_rW80Q_Dfd9lLvhEy40oVEAH._WwAO2WgWd7MRhkM0Wt5OFWypx
 .QvPX270IHRgWE_o_3GBX96AlMih5EpJkqo34FaC1wNmiYA.uwHU96AjniiVpZ6EBHcEJKJLj6gV
 QEmxX3SO.DKwiDXcXCMk2sY816IdHWsWq9OOAvJLLqU16afhQDko3KwK4ilIFKbtlC9GHW0ib4Ep
 CG5NNDLft8zft.7UzgtJkC.ofGoL2Jz9_hGAOGTiFI9ibHQZbElpSNZS9lhz5bGImrxdnaaAi1af
 oLRg6zyC9.MNWBiSKLkHE6wdwlhy0w8G40t8n1MY_41kEXZhMn71m4nhRBUjEEBZkgD.4VT6zZfn
 cOtM4Rvd8bX2xJknLwSPA28Co8YMNT6k_i_E4HbfQCJOY9Tw9qrFGf7G89_lhNzBs_5bUkczMo8W
 xHPCMcROA6f.Tv4Q0EQIrsfDw6IuPVSQdqRymz4YkRwzcQ5SVt3sPxGPNWvChpddx91I70UrJskM
 i4vfamZKofSH.kay79Owz8FzfGWXpqO1ICYf0hI68CW.wXlttDEoB4E2g01Mo84DtSqQHGzyuYeb
 P4mCUqqRHwnjZkDLJS7bZCHUhgs7VrK1HVrGe_iGizgTnwooNAZJAWHfAkj5G0gHZVXSuAdeMHxO
 EJqTzPjVhAuK.sSIRTm7GR8DczogFU6HwaFo8vJQPdI4v2tg6XcKk5hQaaaad6JTpcWWeGW4KpND
 28XuLhXcv6.PtfVBjhkj4J0NifuFA2yXaqpFqxQwPvh1r3r9tXwsGqPUp8VR_Gje5SQaNPWGwQ15
 _sSBbR51Nvxe5XaIN.FzGZZ.YmqTKc5IFNW8pZWEAIEoqN3CTUHKTRVr1AEBtTtqQMFuDudqMkOw
 hooaT1lI.LFB2alfdhxNEDPf8ndvU8dhrmCdMGAZq4JQ6uTFQWApa7.W13tFF4.gG_5OXID7W78N
 I446tVKj1jJITHOr1FQIlCHpffpvJKDtW2vSzOnaQCyYYPJoLFFPbLcu19uas9RSulZG5r1PCAjt
 ZfdVauHuBBEzl.NG1Yey_cTTmb6B2tDam650Q29QEky2f9jKWWHhHqWIG7Ko2GO_voLS46DcswE9
 w4RXNYHhbqhhGMxGK9JfweF.swOtR2.FHATJB.cY2Ev7eats77sB6CF9KPA8CY6FY9dOasEj35NQ
 doKRdxCoXDZhsideZZf7dzip7S245_6WPVOAvPcb1ZBdD9ZmvcVfVDYgkpL3wAwLAcz1VF6JrvWG
 5I08sU3IY0tfhPXbE7ibd7EvsaROYlfZv3CQKeFHxX3ejLEDKXuhxOd5xI4a1oc0_RX66iHwcAQA
 w8DMpuWcfywaRDbi8dug2RS8Z8C5S1AodxL_HNo92UG6aLjG5sE4OChO02hyPEpKEWWGhmYJIg8C
 5omBufp_VCyi4YceeLUMvQ68KFb2MA5PjjcBpnWddzXyIJOw_X0CIE9qwDtzEMwlWR.vTWJZAMl4
 qY5ljFhdcWQMDx.iF9d9JDrdvOjCeaxSRcQ2h1aydCK3TUgw_RyXu.ksB8DYuw0kPwGgTfyFGnX2
 8nbwykZT14c.4DPgTHj4YR6M7MtSBWMQVG172ZjLCIlxPeyHnEjDBJecSNKaIQAgghaZVnQl52vp
 6sERAR1AlPMKZkFtzEWeDf8Hbd_.oUH72zXr.bmFswpD2DD9VibTd7m0.RhSbTNEke80KWBU8xwi
 IsJf5Bl5Q1Sm7zQC3bX.uPI_pIMfPk0msTE7bJUo12jY2pyh__Exr1DRhcCGzIJ_ooS7.BTIOr_L
 SyXHSZrTWx6vRiYz6LiSShhUciVLv9o9.1mF86.WoGOoaZyg5oiECuo4McYF4ARA6y.iIj_sPsou
 bhPByWypNAXNLGjl0q_5GOYVaBVjNEY0VeIHz4duO64ncKBAABTZ773DhdbIT5ln08MBa73.7Z9O
 ussSBbtu2zac_zptJCRTjHJZDL45CTPbCp6czUGPq.ZxMSX30mfqqEHfSQqVKFwe9ITk5.OryRFq
 nKZj_hPk93bqdcGnX3UqmFEtifewqmcelfRq3xzfGx9I7q8CsT_AKPmx2p8sCM0mHF_Jp_Uwu94q
 dqsgvhaYeND7wZRbSzhlKXSzsFkL6084IE.4q6pv6V8uQFUOUjOj.QBAtfIaMlsTgs40HtW4JaiP
 HrGcaEiP4yQsJQaIqnIqrUCkoEWl5Mr9jx2YUvYdMdkC2rW7dIEWysVfvQ.7T7dQeTtOllzU1_yk
 wDw4kd84XiiolUU778TqTMVzHio1IeQuzlV_SOu0TZjgZNwpr5Q.k9lGTpGTKXA2KiO39UUAJGl8
 noCjuTVgDhT4IrN_DeJAuhOJC0OmORnLPp7rvngqmIjKWe5WRYeSXr22TPPi2BWW5pOQy5uBc1wc
 EL.9RC4ugDBwdfBOSNFXVSQIt34GYocjx_nKoXOMbrB85JzY36VuEkKMXWBqgeMFTr61pj07imj1
 I.kfL2otP2YNrHgZHy8BmPTYW2QQcMZ2.bQSI1PnL1DzLiTlxY2FTmCg16YGTInH._Q8ZCBHp6ZN
 M11Hm8qJgGcblrYMmc4dOUPwca7PXymFfCrp.DowZ9ms.AfEzVkyDs6jR265IaBufYcAqOhU8o9i
 7Ra8O8A7Mu4qgdKYHViqbsIF.Kxf1ehIcKfApij.DC_VOqwxnh7JTkra45yHV3gQUspSMT7QEGJv
 _mTjVEZQTdnxWjaGUjqD2ejeUr898a7BeMKRbh9cr7YuFJR.3__h07NvN21W4eZCBj0ODMBeuBu_
 iGkOD5RttBRSBZjXajXvPOHPOBsu1hDL1gA6n1R75xcLVdsYwRHWailDUglmjp3_s7YiSEQXEPec
 6QUcOOPa7Rl54fCoimcatNGJH7.33_OjtwRTz2xaU5yqkhiHYPvY6AmBLeTil66omYzlwnlavfMO
 j7vvTK1EOJI2ukadJZUfYpJGc7iwNG9iJ_NATXhD60vkcmf1csiXpLsT.DYs3DDdxmXaqoMswPwr
 ZupxIe8Y7ESgKvgXeZD2nra8kjuzJKTkY6IErTSLSSMal1CjMGSlUk0pXxUCmEhGVuDbKwlB6pYA
 DnBbm9WnIxiB08.LWVBbbcgoglFz_HcOR4s4WnuofJ1afUmEYnwrSe2Qd9xw2gGmCC1NcNkAarY8
 DfBbOvVVloWmnFq4wobyRDFlQANjfDlaz1cANPEBwWcrquc_J_uBXm8XxEwdmbMnHhovGhTV0bT5
 XR5J6beL3SHf9nUl5O40-
X-Sonic-MF: <mariamsterbenc@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic316.consmr.mail.ne1.yahoo.com with HTTP; Tue, 23 Mar 2021 08:16:56 +0000
Date: Tue, 23 Mar 2021 08:14:55 +0000 (UTC)
From: "'Peter Florian' via linux-ntb" <linux-ntb@googlegroups.com>
Reply-To: peterflorian019@gmail.com
Message-ID: <1514594391.981177.1616487295530@mail.yahoo.com>
Subject: Hello,
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
References: <1514594391.981177.1616487295530.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.17936 YMailNodin Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36
X-Original-Sender: mariamsterbenc@yahoo.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@yahoo.com header.s=s2048 header.b=SnppRmRE;       spf=pass
 (google.com: domain of mariamsterbenc@yahoo.com designates 66.163.187.175 as
 permitted sender) smtp.mailfrom=mariamsterbenc@yahoo.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
X-Original-From: Peter Florian <mariamsterbenc@yahoo.com>
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



Hello,


My name is Mrs. Peter Florian and I am a British Citizen. My husband died r=
ecently on Coronavirus and I am presently in hospital suffering Cancer Dise=
ase. My husband has a deposit of 15.200.000 GBP in a prime Bank here in Lon=
don. Before my husband was taken to Isolation center where he died, he told=
 me to use the funds to establish animal care clinics. We have special love=
 for animals. Due to my present health condition, I will not be able to han=
dle this project. Therefore, I want to donate the 15.200.000.00 GBP to you =
so that you will set up an animal care Foundation in your country. A clinic=
 where animals will be treated in your country for free. I see in televisio=
n that people donates funds to orphanage homes and don't care about animals=
. I and my husband wants to make a difference in the world to let people un=
derstand that animals are important to nature. Please let me know your inte=
rest so that I will ask my lawyer to prepare a contract Agreement on your n=
ame. Please don't forget that my health condition is bad, therefore I want =
you to reply this message as soon as possible so you will receive the funds=
 before anything happens to me. I am waiting to hear from you.


Thank you,
Mrs. Peter Florian

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/1514594391.981177.1616487295530%40mail.yahoo.com.
