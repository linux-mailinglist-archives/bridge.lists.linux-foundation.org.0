Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 936D07777C3
	for <lists.bridge@lfdr.de>; Thu, 10 Aug 2023 14:03:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 156C040A5F;
	Thu, 10 Aug 2023 12:03:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 156C040A5F
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=boeing.com header.i=@boeing.com header.a=rsa-sha256 header.s=boeing-s1912 header.b=OceHmJNG
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BlOdjUJ5fQNR; Thu, 10 Aug 2023 12:03:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 05D2041576;
	Thu, 10 Aug 2023 12:03:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 05D2041576
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 87DDFC0032;
	Thu, 10 Aug 2023 12:03:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2F316C0032
 for <bridge@lists.linux-foundation.org>; Wed,  2 Aug 2023 03:47:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F1A9681455
 for <bridge@lists.linux-foundation.org>; Wed,  2 Aug 2023 03:47:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1A9681455
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=boeing.com header.i=@boeing.com
 header.a=rsa-sha256 header.s=boeing-s1912 header.b=OceHmJNG
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DxTpM79PwFJ5 for <bridge@lists.linux-foundation.org>;
 Wed,  2 Aug 2023 03:47:43 +0000 (UTC)
Received: from clt-mbsout-02.mbs.boeing.net (clt-mbsout-02.mbs.boeing.net
 [130.76.144.163])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BAAFD81427
 for <bridge@lists.linux-foundation.org>; Wed,  2 Aug 2023 03:47:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAAFD81427
Received: from localhost (localhost [127.0.0.1])
 by clt-mbsout-02.mbs.boeing.net (8.15.2/8.15.2/DOWNSTREAM_MBSOUT) with SMTP id
 3723jkox006069; Tue, 1 Aug 2023 23:45:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=boeing.com;
 s=boeing-s1912; t=1690947946;
 bh=/nHf9NxBGW23Fp6Y5PeD4ZkfKtKauHk4FoBOYk3h8rM=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=OceHmJNGGNNunLZ/MsHfuVo9kFdJ6p9BGtp2TqlcyvqvRcmSjG5OMp+yALCpCqdsX
 dQK2mllU1X7r4DgznLUgc1nCwfSQX4wOMHfZIqcLomalz/2nXdR7ywKJzc2jiqG+BH
 lpHYdIwuY8WDv07WwYF/pN+iqeTsFH3nsgGsy2Zl2P5fn+HAhaa2gFxN8DaoxOi8TC
 8UA52HbGnRiDwKdqKotqaeNqNcmzwdqqVJKuedaEY8hVuuCjgDL9/dddryxMff4d0/
 xbCv8dgA6F58qgDKIgUG3rq8aB5v70XQmjWuBopqC0Es2b8mxHit0bSQkqW6ho95+c
 qHGXsIlkGfVdQ==
Received: from XCH16-09-12.nos.boeing.com (xch16-09-12.nos.boeing.com
 [144.115.66.161])
 by clt-mbsout-02.mbs.boeing.net (8.15.2/8.15.2/8.15.2/UPSTREAM_MBSOUT) with
 ESMTPS id 3723jfVo006047
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 1 Aug 2023 23:45:41 -0400
Received: from XCH16-09-12.nos.boeing.com (144.115.66.161) by
 XCH16-09-12.nos.boeing.com (144.115.66.161) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 1 Aug 2023 20:45:40 -0700
Received: from XCH16-09-12.nos.boeing.com ([fe80::c591:b386:9cff:58f6]) by
 XCH16-09-12.nos.boeing.com ([fe80::c591:b386:9cff:58f6%5]) with mapi id
 15.01.2507.027; Tue, 1 Aug 2023 20:45:40 -0700
From: "Hasenbosch, Samuel J" <Samuel.J.Hasenbosch@boeing.com>
To: "bugs.a.b@free.fr" <bugs.a.b@free.fr>
Thread-Topic: Re: [bridge]: STP: no port in blocking state despite a loop when
 in a network namespace
Thread-Index: AdnE8ssxH5pBaxffQ16ZpDApu/J7PwAAPX9A
Date: Wed, 2 Aug 2023 03:45:40 +0000
Message-ID: <0acf2133dc8f47d3ac40e718ab014b59@boeing.com>
References: <b1b77fe134e64bfc85394050bd40dff6@boeing.com>
In-Reply-To: <b1b77fe134e64bfc85394050bd40dff6@boeing.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.137.12.6]
x-tm-snts-smtp: BA7F4C8CBE87D13CF4800A97BF790E4B3AA32C9E69320DE025AAE4A38B35210C2000:8
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Mailman-Approved-At: Thu, 10 Aug 2023 12:03:38 +0000
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "nikolay@nvidia.com" <nikolay@nvidia.com>,
 "roopa@nvidia.com" <roopa@nvidia.com>
Subject: Re: [Bridge] [bridge]: STP: no port in blocking state despite a
 loop when in a network namespace
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


Forwarding related issue:

https://lore.kernel.org/netdev/20230711174934.3871fb61@kernel.org/T/#m4d530=
64313393cdee86f12ef9313523aa734d681
