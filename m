Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F36A57C84A
	for <lists.bridge@lfdr.de>; Thu, 21 Jul 2022 11:56:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A0B1F405B6;
	Thu, 21 Jul 2022 09:56:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0B1F405B6
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=AZbDgFt9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qy39k4hHjXPg; Thu, 21 Jul 2022 09:56:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id EA050405EC;
	Thu, 21 Jul 2022 09:56:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA050405EC
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7403EC007D;
	Thu, 21 Jul 2022 09:56:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E95CEC002D
 for <bridge@lists.linux-foundation.org>; Fri, 15 Jul 2022 10:32:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C009C4284F
 for <bridge@lists.linux-foundation.org>; Fri, 15 Jul 2022 10:32:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C009C4284F
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=AZbDgFt9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u_gydRsK6COs for <bridge@lists.linux-foundation.org>;
 Fri, 15 Jul 2022 10:32:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D67A342847
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D67A342847
 for <bridge@lists.linux-foundation.org>; Fri, 15 Jul 2022 10:32:32 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id fd6so5727272edb.5
 for <bridge@lists.linux-foundation.org>; Fri, 15 Jul 2022 03:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=9nXgh/Ek0VdCwFtn/f/7j4//6Hbuv6fXgTrKh6lEkr8=;
 b=AZbDgFt96uSwt2t4M7TsBAdZaDcKlPtOT6HS1oqzqKrH4AEAagcmIc+ETigxLc6sMa
 tcg+Ofs/RQcrYMmL1tNYNlN0h0fm9qLWWpGudoqk3Htm8xBXsWUEMKgql/EZuJmJaI54
 J0pg8uS0Nv+40yEhvaoJoRBOIk7jFaS6Rq/97jerbsb4VCC44R8oGBXwhHm90IVdURJL
 4jAe6/atkxrbLABNkBb37ov85Bh4R292Txytnvzs37pfU8+B3a1v3neqc9tkY0kN/zE2
 3EXrPSKHVfTnmOzqZpC9KutTEG9pO+zqq97Q5tJApjMkvyLxrmY20sG8S9olw1PXFZxL
 GoIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=9nXgh/Ek0VdCwFtn/f/7j4//6Hbuv6fXgTrKh6lEkr8=;
 b=vYD0jGO2JKoVIdJnOuCxlA6hGkULBWzXRR5Tu4lsznIPMkxNdvRersxdyIOOVzS2Y2
 cgB/mqnFOrCIP5rxjAopbbP+BhwVggufIVrot3TADfdVoeU+2qygxCrz5ZF5cNPiZUg6
 FbAyZjNb9FebMHQT3lMjs3POZRBD36nWLhsEy8fzCR1q1LCKVN0uyDQ96wbl8tIw2QzI
 2XiUapKwyvP5YTZq+lJA6amg9RAVbkI2oHrGvvXOO0Dxorzhjlxl3wYF8+yFH99xegxI
 iWJ+w8vlAR/b4GNoowuOuYvzt4yQds5F5gdsnOKPbo30CbB8WbKPsfZoS3m6YR10CMLi
 nc/w==
X-Gm-Message-State: AJIora9lCQWDfDQiVa/1txdEzSZdxyCa+DBFi8KKy3vlCVRfNBFhElZL
 f6g/y0jtP+UfUgvJ4fKsk7HrqLrp3MDdxCmXfBBh1/o=
X-Google-Smtp-Source: AGRyM1ukF/mo7HdshHucDv95SQR/uzbgQyK0sNUmZR/hRIMUutvWSAR/2iTG/+XO6gJgjsW+h2x57P9y+CGH45mJ93o=
X-Received: by 2002:a05:6402:3443:b0:43a:f555:e9da with SMTP id
 l3-20020a056402344300b0043af555e9damr16592123edc.199.1657881150799; Fri, 15
 Jul 2022 03:32:30 -0700 (PDT)
MIME-Version: 1.0
From: Scarlett Kelley <scarlettk261@gmail.com>
Date: Fri, 15 Jul 2022 05:32:16 -0500
Message-ID: <CACKALQke5cK5tFbqmUT=2vHF-kE+Q5zO_EhcQQXVYMALcKdX3g@mail.gmail.com>
To: bridge@lists.linux-foundation.org
Content-Type: multipart/alternative; boundary="00000000000012c37405e3d5893c"
X-Mailman-Approved-At: Thu, 21 Jul 2022 09:56:41 +0000
Subject: [Bridge] [cloudshell-user@ip-10-1-3-57 ~]$ aws help AWS()
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
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

--00000000000012c37405e3d5893c
Content-Type: text/plain; charset="UTF-8"



--00000000000012c37405e3d5893c
Content-Type: text/html; charset="UTF-8"

<div dir="auto"></div>

--00000000000012c37405e3d5893c--
