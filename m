Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE007031F2
	for <lists.bridge@lfdr.de>; Mon, 15 May 2023 17:56:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 32BC1840C8;
	Mon, 15 May 2023 15:56:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32BC1840C8
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=networkplumber-org.20221208.gappssmtp.com header.i=@networkplumber-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=t42S/uV9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id REX1ldJqlbKb; Mon, 15 May 2023 15:56:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id BF77B840C1;
	Mon, 15 May 2023 15:56:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF77B840C1
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 58217C008A;
	Mon, 15 May 2023 15:56:36 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C3D77C002A
 for <bridge@lists.linux-foundation.org>; Mon, 15 May 2023 15:56:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8895341F87
 for <bridge@lists.linux-foundation.org>; Mon, 15 May 2023 15:56:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8895341F87
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=networkplumber-org.20221208.gappssmtp.com
 header.i=@networkplumber-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=t42S/uV9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ajjzfOM1SFmU for <bridge@lists.linux-foundation.org>;
 Mon, 15 May 2023 15:56:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7959C41F86
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7959C41F86
 for <bridge@lists.linux-foundation.org>; Mon, 15 May 2023 15:56:32 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id
 d2e1a72fcca58-6436e004954so13419851b3a.0
 for <bridge@lists.linux-foundation.org>; Mon, 15 May 2023 08:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20221208.gappssmtp.com; s=20221208; t=1684166192;
 x=1686758192; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OcLsr78EN7rEqPNewa0hKsosvcKEefYu9hxdkOGF9BE=;
 b=t42S/uV9vuqdYs8egpECgEbmFeiZUT1aZki0nf0JVuoyYW8YQ7ZKnF2tqrcnyPr7tN
 zKTZqCG0Ct6pqg1xPsUsNSrKV9UO2Um2lH0gXMV11EOx/I/8jhZJK6Lx5NN95JSiZJ6b
 hKquYr4POpSLvb2pLTFcUZSWmnOc8FXSNtE1WSU+rmUg84cp/rpLx01Q/xH6q9lYzj0z
 KSh34pKnJ2NZkAPs6J8I6z5ExFaC6N7NdxyXlvT0abEj7yn1hKx0Ad1eYnBvRURXkW+A
 rDnVClHXDXjhlVLZ2QcNaeczaVVU4FQqLaerj4haqy82hiXNY4PIaxvptlhxqB0TlHbi
 lcyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684166192; x=1686758192;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OcLsr78EN7rEqPNewa0hKsosvcKEefYu9hxdkOGF9BE=;
 b=MTPYMwRKaRmLJMwb5LmeaL+GYAHSjjv11lmntGoEKpgqcpr91N8meIQUXKblkQO6mz
 81JExv9wvWliiSda4mAcHwTgBnbiUU0dgQT1/1zIaejQYndvWmV+u02Mm97AVVsoiAXR
 xafmAWHa+W18cn1pZgon7o32cqVn49peD0bZFhpxCZ4qSqOEXSQOecDs8dICpsV6nPrv
 abfye5jCWSzCpq1J0bz/X8K0UGfiFuzcUr3nB+6YoyNKn4UkkF1doCmg65MKs6JYb22d
 rvovq2R8E4PlKld1F30j+AbTkhpJJVCaHSnyn+vJdLIa4BJZuJx4oyC6IHmNty9Nu6ON
 o7Gg==
X-Gm-Message-State: AC+VfDw9+HW6gFFWNc2mA/AlRfnuSfOlj3ygVXax7TWbu+vvPJtDdvFd
 sgoyW/T2qW4WPNx+LLEJX8zzhQ==
X-Google-Smtp-Source: ACHHUZ7guiwS0vhMsPKfkgMtXN5vJAa+blVOCmLC7VwtpLIKmYcJEPs7xTmp7MUXux4OuVm25d2WCg==
X-Received: by 2002:a05:6a00:b55:b0:648:c1be:496 with SMTP id
 p21-20020a056a000b5500b00648c1be0496mr26608014pfo.22.1684166192018; 
 Mon, 15 May 2023 08:56:32 -0700 (PDT)
Received: from hermes.local (204-195-120-218.wavecable.com. [204.195.120.218])
 by smtp.gmail.com with ESMTPSA id
 f3-20020aa78b03000000b0064385a057dfsm11989225pfd.181.2023.05.15.08.56.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 May 2023 08:56:31 -0700 (PDT)
Date: Mon, 15 May 2023 08:56:27 -0700
To: Johannes Nixdorf <jnixdorf-oss@avm.de>
Message-ID: <20230515085627.5897dab1@hermes.local>
In-Reply-To: <20230515085046.4457-2-jnixdorf-oss@avm.de>
References: <20230515085046.4457-1-jnixdorf-oss@avm.de>
 <20230515085046.4457-2-jnixdorf-oss@avm.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Eric Dumazet <edumazet@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 2/2] bridge: Add a sysctl to limit new
 brides FDB entries
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
From: Stephen Hemminger via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Stephen Hemminger <stephen@networkplumber.org>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Mon, 15 May 2023 10:50:46 +0200
Johannes Nixdorf <jnixdorf-oss@avm.de> wrote:

> +static struct ctl_table br_sysctl_table[] = {
> +	{
> +		.procname     = "bridge-fdb-max-entries-default",


That name is too long.

Also, all the rest of bridge code does not use sysctl's.  Why is this
special and why should the property be global and not per bridge?

NAK
