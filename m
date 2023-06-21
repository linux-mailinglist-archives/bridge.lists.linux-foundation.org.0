Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 21674737C9E
	for <lists.bridge@lfdr.de>; Wed, 21 Jun 2023 10:02:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8DA181C11;
	Wed, 21 Jun 2023 08:01:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8DA181C11
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.a=rsa-sha256 header.s=s2048 header.b=UgzbR1lw
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RNWBBXRSKaVY; Wed, 21 Jun 2023 08:01:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 7899D81D0B;
	Wed, 21 Jun 2023 08:01:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7899D81D0B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2BD8DC008C;
	Wed, 21 Jun 2023 08:01:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 59099C0029
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jun 2023 07:17:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 22B5A60E64
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jun 2023 07:17:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22B5A60E64
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com
 header.a=rsa-sha256 header.s=s2048 header.b=UgzbR1lw
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ru_iwIFmc4rk for <bridge@lists.linux-foundation.org>;
 Wed, 21 Jun 2023 07:17:17 +0000 (UTC)
X-Greylist: delayed 00:10:01 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A54D160C28
Received: from sonic304-23.consmr.mail.gq1.yahoo.com
 (sonic304-23.consmr.mail.gq1.yahoo.com [98.137.68.204])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A54D160C28
 for <bridge@lists.linux-foundation.org>; Wed, 21 Jun 2023 07:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1687331837; bh=+8YeTsFFP4/LcuYhuxZ+DHkGB6oZ92zKrQG3Mx2GKvA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject:Reply-To;
 b=UgzbR1lwHoVb127rQHtmF22wYxJ6Em+1l8crY6Nv8qhedtvzudXXRRuKQ3jlVPkPQZhFD/yF+cftnXygxEWHdER5c3KcfJDL8GrKlIkigOKnlf1jM11MJ3L0NLmZd3ncxs4yInFEVTt2BySt+POfgdKKlbWFUmRsV0MPaE3Idt9Cz/uXOYKa4vqkfpNtUz13MF+3/1P+W4c0EqEhUkA3MNLC6hviSRfpF4wqH6Cb2D69Zmo+2gzIpZ7ENTQ2+HmZvIgik3d+nI9ScWUfOOKoF2DA++FtzN+6nyTzWbHyf++a03tTUEMRaWiRL+LhtBFpBRqUj9aoaKMX2/Yi18X54w==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1687331837; bh=WG1NDD0sHr7HZm/kj2HfCyjx3K5n76BtLarjYGu6Rhs=;
 h=X-Sonic-MF:From:To:Subject:Date:From:Subject;
 b=k42jKDqBm9uE51oXfVktpGjx55AyYTcpnXZhKXf+did5bCkxgHMv2D8J9AERwfPPRWGlrQHniMVSXmQsLUNxnt+PRLzr0d9eH3VQyJW28L2OwZ893+mnFa3xgUE69/zFj94lD7okPRNvMp56KAJ839WB5RdlksxLaWYo9BwBV8R2EAju2DQqqxLzswAJYMgOE4DSuJ8H0nATSLgnv+x3n0F3eWGovrI64dvUOWUHq/kGRUVwyvVW21UIb2Ayh3lKSg6kcw875TzV/A7MIR579/jcCtXCxsQUZh7dc+zCO60c5FZK3ELxfu2QfeUVc9MAoUIvZ5nzCyPCiTs3sfrQXQ==
X-YMail-OSG: RU66A8UVM1lLZ4MTKmiTXVYn3v.AfJOxwnzpn2lisNOekNTECJ8Qrhn4Xy9FR5i
 sb4IJa_3ieErBVAABIJPJ8b0hg7q6RMxnF3brCJhjApxuTQEZj9TOu9NfmjV0p1Je3iLy7kZrSKf
 17kbTu1kMvug.IwszsUsPWwbFMsJi6ke4BxCFrq5n2XNWNwZ_8C857xxct7A50C5LVZ8ye4lHZVf
 _6eWuKutdKuPKQWSZZHW0BEzzAalzXgXy.va.Av0MgC.kUH4jF4hNLlRGl12quZ8eQKOUIctPlio
 CIxT48xwjlTkCjF.2y0ItxUb53VmlaqIyPhZ3M61cmAU3y_aFjyGKwfKE4N_BLFZWPDCs2jXkj1s
 ZQz5ukwgQMrWlcdpJbVTiIxa_HnxQr9Be3WM_qfwYdKY4c5VdCAoWEW_18HvIbvPDvqNSViC2S6D
 WdsczdVzpElQVbiPoP5ylzhk1UBtc8JfNQtF6Jhmn3Vj1U6VvlphujgZdVnFtn.E.JI97VIG1HSC
 zEC99j6Tf4EU_rxS6THeaIueIPzLeg3m5a0CIyEem8jzVEavJCa8T6RI4P_GUofIUHDk0Q488O3_
 uzU6n_dUGu5I37vcBEcO2bJZJZdr2HrXhMuutbyLaX5Al3mTuz9Ak9dVOobQ8MVNS77OuD3kl2Iw
 BLkcOKtX0Gt2ajjg7caC3tS9tP65dl8g0nIhQhX.CG8UcQ2s96RVdaFjwwpxe9USCgGz7FjSeta1
 Ssu2MK9oThxUrh9IluXZ4.1TEtzYkT3BJeMcvRkW.W_qNm9zKeFO6leRGgp3ziVYiWjtkXQ0HEjA
 0GEgk_0x98kS2todpRVpBK3rAD_hqehUBYO3djYPgZu1br6GyBvrpMX.MzGrFyx.hruKDnwCzwmV
 a4QmMShq5HX4J0sPIAOHEJq2_gxmV5mlbxnZDRXsarUM_6ork0dPTRmJpEpIGDf5uuHNhE3jUsnl
 DV6W2GKSJL4V_bZfWXK7sivUnEf.t73T9ZKtiG_dw7H4e790NntkvhKiGV_oD9XEljfLzQz07H34
 Wc11LD9gWJpfhtaCeg.YFNitEKdg9j9WAZW_vteKIXbiVf4VzetgrX4N7HE.cjKSipG.HEqr2.fO
 4_3hEa8aTG8HSdO6Z1UjAfczCbbHjg6uqmFqm1hJ1IQUceVKr035pQNdA1xDMEeHHyUTOYSyz9Fy
 Iu1smSE_NnOca42.lADk9YI1pclxT6ENIGjEgGQumG.0Rnc4qbQAy5fgKWZXKJagSGPA96hLFHQb
 oFaECjjmm9P7uKkc6H089rHlgOoj3nB_c1vdc6AdfIYxqFpd.rLslnhyHEigV68vgQruRCkkk7cH
 11eCix3j4JgBrBiZgrkmBQ3QaD3Pv1WnBocYOlE5_kvkg6o3sJnQx9ltZnC65dXcs2vxXQihvboH
 ENhr3J4fBz_2C198uyshT8s.Z0udrje_LDD9n.s_ajlVD_mM.it0XbwX6iz4eRrxTqh.Ihy8p9Lf
 nMnYC4tsQfVGQPS_zuuWNoIqUjHmnMIuymnvJ4pc7XGAUDifz0XW.rWlVwdlkrPLDgI1BnINgI5g
 OMzm6NDLDDp1tTemyTX7urg6DPdLjEFKN2a8SCBx0Ja3UI9aHNJF9Zo7_fxx2ZWujmv9soYSmF_4
 vcLftfQeX5oyuqDhd6VaYwfsZJl1xJOkpGXGplw.Z5UA5jVzG8d.vrAjCtvf1Rz3zIapQCmmgMfA
 sfz6jZaHrJ6zzbmxmlxPhjA8LeOiN46scw5lFOx8I2kaRsTB3y8tIhgyw2n5hXUHBY2yiBoLOL9k
 sx9T0hkfX8r0vEQZjpO7Z5oE5S2dO.j5anwa0OvO9AVtOJfuGtnJGn2fxa9M9RgCAP8c0DcMtOm0
 t3i_.561JnS2_3GwY1Bactay5KsVJcBYdqF9jPxAFDQyEKQ789dixnVmpI.Thkgwdk3zQiNaCEwv
 RbUVBlkYF_2OP7b9Ta1835HAE5oz_aHFelDOxjeB_FucUpdWvNV0irY2E2VSfbyvqakP7DJfLH_o
 _17aTowAMZR5z8I3NrIAFHeR.2KGiWM9W_z8FP6rwq9JKQb0kr4sN_4uZbg3M_ySUmEN_XX3KXT5
 2Utby.8_0TIFqei1hJ.yqentDyyu5zwLZbfU64_ftDpW0pxjeva9FNwA2aG2mZ_2SQlfaV5AAAuQ
 LtCumY.BCDU9ju4EJjFQ_znzaFPlfCF626shVRPPodOJZ359onGnKzMU7uy3zraK.F0HQWQaZ4_1
 F5Ahtw2wdrkmgben3ZDtKxHZZ4XpTUkPwPT72ghpUwjLlosGe_PyBV_.L9.QHd_NjkEIKOqOnuUd
 j.1J1Gv3brvt1asEilqBL
X-Sonic-MF: <astrajoan@yahoo.com>
X-Sonic-ID: 0f5b861b-537d-450a-b31d-92deb4316dbc
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.gq1.yahoo.com with HTTP; Wed, 21 Jun 2023 07:17:17 +0000
Received: by hermes--production-bf1-54475bbfff-5bcbd (Yahoo Inc. Hermes SMTP
 Server) with ESMTPA ID 87614d617bd85691c90b35a1adfca9c4; 
 Wed, 21 Jun 2023 07:07:13 +0000 (UTC)
To: syzbot+881d65229ca4f9ae8c84@syzkaller.appspotmail.com
Date: Wed, 21 Jun 2023 07:07:10 +0000
Message-Id: <20230621070710.380373-1-astrajoan@yahoo.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <00000000000051197705fdbc7e54@google.com>
References: <00000000000051197705fdbc7e54@google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 21 Jun 2023 08:01:54 +0000
Cc: ivan.orlov0322@gmail.com, arnd@arndb.de, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, nikolay@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, skhan@linuxfoundation.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [syzbot] [net?] unregister_netdevice: waiting for DEV
	to become free (8)
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
From: Ziqi Zhao via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Ziqi Zhao <astrajoan@yahoo.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Hi all,

I'm taking a look at this bug as part of the exercice for the Linux
Kernel Bug Fixing Summer 2023 program. Thanks to the help from my
mentor, Ivan Orlov and Shuah Khan, I've already obtained a reproduction
of the issue using the provided C reproducer, and I should be able to
submit a patch by the end of this week to fix the highlighted error. If
you have any information or suggestions, please feel free to reply to
this thread. Any help would be greatly appreciated!

Best regards,
Ziqi
