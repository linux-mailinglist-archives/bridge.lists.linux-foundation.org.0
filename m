Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6EBA651E8B
	for <lists.bridge@lfdr.de>; Tue, 20 Dec 2022 11:13:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D203E400D9;
	Tue, 20 Dec 2022 10:13:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D203E400D9
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=Ce84Cz9Z
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v063-TJdCrWm; Tue, 20 Dec 2022 10:13:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 7E1EB40134;
	Tue, 20 Dec 2022 10:13:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E1EB40134
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 33B20C0077;
	Tue, 20 Dec 2022 10:13:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2D42BC002D
 for <bridge@lists.linux-foundation.org>; Tue, 20 Dec 2022 10:13:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BCF97400F1
 for <bridge@lists.linux-foundation.org>; Tue, 20 Dec 2022 10:13:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCF97400F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ePpppr8uWzQj for <bridge@lists.linux-foundation.org>;
 Tue, 20 Dec 2022 10:13:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DDB76400D9
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DDB76400D9
 for <bridge@lists.linux-foundation.org>; Tue, 20 Dec 2022 10:13:15 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id d14so16721727edj.11
 for <bridge@lists.linux-foundation.org>; Tue, 20 Dec 2022 02:13:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=6UrO2j9DEey1G8UqydjmxQqMxVbqAZzAn1bK1fPzhSc=;
 b=Ce84Cz9ZMLrEN2Gk2uhhVVozKt2Ab9/SVRJooyCg87u9QWuaXj2DzyRfdtJPOtJ/y1
 caxj6AxhZeVQV21Mz7mN99Oe9sUOteH83ZZBnEC1zGQIS+y56hR0g9LEc4yKwfcI876m
 8BL/xL0n1Zkpxa4xIK8ntmNbuGmbMqXb6DMKHmlGAeEQ07STXlZkyerrchrhlcAXsq5O
 fEuxO7r57G7VHe8XV15zLqyUdmuh4l/DQIhRor++mvff2ByfO+/2rKHymzbFOkLs2/RX
 OyoVx1HDQm1yNO0rfnMdz7pIKj106xQFQo/JrlKIe1Ae9oFkDn+G/SislAwKHyP3092p
 Ssow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6UrO2j9DEey1G8UqydjmxQqMxVbqAZzAn1bK1fPzhSc=;
 b=W3aLrprWDyRmLr1io/Nrxn3I/gdFlXwcOkjA8MHgbD2fo9cce308Zu20mrMDktrIxX
 cR12VhvDh8aQp0feytxo+Szk8ArlhZ/27Ho5Ha6QO8F0petlUrYNrFm4mr6x4jryt+cl
 5BbrnWg0MncvHoJ9vCBIa/CQKJ7WhWzW/RzmKe8F77j5lBT7RWR6xS5mtEbqor0xFy2p
 VtDzqs4cyQ1gvHstlYNcl55J5neHexAOYnIHchI1MAUpyzXbwgVGJenq/eBcsdb2czLX
 SZPxwSx8i6CYyoU4c/lW0GQzIIEAnDdyjOYAgIAvDkkaVKPBdLa6fsZ8D/RMtn/6aFZg
 EtIA==
X-Gm-Message-State: ANoB5pm3xpgyljhvta0zig5hEjuoVc8ILz8WzZRBZvXFjGe6cPjtjnDN
 ELEXRr5v9xPG4QYmt6jJWDq1ciEoGgZDv+chGYw=
X-Google-Smtp-Source: AA0mqf526bxkpxOkdLFI2Q1atb7+xe2frMnb8gtgGOtE6L+34AT1XQfmQutkBdDLaHHRiCaFlZSlhQ==
X-Received: by 2002:a05:6402:3641:b0:462:6d7d:ab09 with SMTP id
 em1-20020a056402364100b004626d7dab09mr41021775edb.38.1671531193850; 
 Tue, 20 Dec 2022 02:13:13 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 n1-20020a05640206c100b0046150ee13besm5360318edy.65.2022.12.20.02.13.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Dec 2022 02:13:13 -0800 (PST)
Message-ID: <05d630bf-7fa8-4495-6345-207f133ef746@blackwall.org>
Date: Tue, 20 Dec 2022 12:13:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Joy Gu <jgu@purestorage.com>, bridge@lists.linux-foundation.org
References: <20221220024807.36502-1-jgu@purestorage.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221220024807.36502-1-jgu@purestorage.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, edumazet@google.com,
 roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 joern@purestorage.com
Subject: Re: [Bridge] [PATCH] net: bridge: mcast: read ngrec once in
	igmp3/mld2 report
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

On 20/12/2022 04:48, Joy Gu wrote:
> In br_ip4_multicast_igmp3_report() and br_ip6_multicast_mld2_report(),
> "ih" or "mld2r" is a pointer into the skb header. It's dereferenced to
> get "num", which is used in the for-loop condition that follows.
> 
> Compilers are free to not spend a register on "num" and dereference that
> pointer every time "num" would be used, i.e. every loop iteration. Which
> would be a bug if pskb_may_pull() (called by ip_mc_may_pull() or
> ipv6_mc_may_pull() in the loop body) were to change pointers pointing
> into the skb header, e.g. by freeing "skb->head".
> 
> We can avoid this by using READ_ONCE().
> 
> Suggested-by: Joern Engel <joern@purestorage.com>
> Signed-off-by: Joy Gu <jgu@purestorage.com>
> ---
>  net/bridge/br_multicast.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

I doubt any compiler would do that (partly due to the ntohs()). If you have hit a bug or
seen this with some compiler please provide more details, disassembly of the resulting
code would be best.

Thanks.

