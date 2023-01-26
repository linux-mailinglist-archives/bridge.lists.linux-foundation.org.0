Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB7E67D53F
	for <lists.bridge@lfdr.de>; Thu, 26 Jan 2023 20:18:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDEFC60B88;
	Thu, 26 Jan 2023 19:18:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDEFC60B88
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=networkplumber-org.20210112.gappssmtp.com header.i=@networkplumber-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=q4mwlr5n
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D3TbP90AgBLU; Thu, 26 Jan 2023 19:18:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 7292F60B1B;
	Thu, 26 Jan 2023 19:18:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7292F60B1B
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 29492C0077;
	Thu, 26 Jan 2023 19:18:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AF3C4C002D
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 19:18:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 83D8560B14
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 19:18:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 83D8560B14
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nthb4_PKyVWX for <bridge@lists.linux-foundation.org>;
 Thu, 26 Jan 2023 19:18:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 814F960A64
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 814F960A64
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 19:18:46 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id jm10so2716724plb.13
 for <bridge@lists.linux-foundation.org>; Thu, 26 Jan 2023 11:18:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RDU0jrNVQ4Bx2dNkHpgBN29LnYUs6yNV5udmthSaank=;
 b=q4mwlr5nEI0etnmuPLJgbcMHZDwf7lSfWfc4jHHdBlXQtZbEzqntm+VHMUTQGJV6GP
 XqwGbWmkklfDDdhT8UOqQ3TrtGJtDfcZ+p621saVuAb7rsCrSQFsz9Hm5Y942IjAnAM0
 YCd38GBd/cGV3FOEwfj1zmwBfv69ImR55tVKV85e5Bhpwf883U1rEu0LwxPFAKfLQ6ba
 If46yJUg/nJcUgZMrQK8AAw4ytMm9yvVDpuZT/pr05NLd0EGRH7qnuve9tG9BPcT1tf2
 QMf5sjoaeMHaH4AMpQN2V3dspAbrdHD0d34sINR1FoCqIKZgXiion7E7e1C4moM/p5Nk
 Kxgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=RDU0jrNVQ4Bx2dNkHpgBN29LnYUs6yNV5udmthSaank=;
 b=o2wTbRBlRPc9o4L/AGGUyRwwg9/DFg+W9UfVkpG1U621aKNtkSBCj5jVqqjuoeMU4z
 N6AbmibtWjLXblcWtNeikyz0s9AW4q4gUNfxHUnuEgg0NLNsJKV2OKwIQP7yEcE8HkwU
 3nFH0DA9UEZb0MYWVndbH6i+13Jx5lyyMD4hKc22LrTvZnMStpbI5/sZKcwlLBdhUT2s
 PcVPr0uyZ4fdZE5LWP9LphYhryWVm6SrHfDiuEqnE9tJK7WG0XnEkm2X0Hx3VXcX5Vq6
 lJxX3AVfPBgzoQwErydneBcQ0ga8KBQ2gDVQZHk9zOHlfmKgG9eJn1EKGfIpW1PQZ7v2
 DT7Q==
X-Gm-Message-State: AO0yUKUis7kTa0UEjRMjavnN8ycRnoGsI8TNNwIuIlqUWB2qFwEB+N1N
 K0QVF8OwB73ZHfSJNytLqALL4A==
X-Google-Smtp-Source: AK7set9B8Q1J1wSLeoK466yZOda2aOiXBB8Z7V29/zYEoH/NJEEZWHwJwHamC+M68ZIeAVqqWh2PWQ==
X-Received: by 2002:a17:902:f684:b0:196:3232:f495 with SMTP id
 l4-20020a170902f68400b001963232f495mr7145375plg.16.1674760725519; 
 Thu, 26 Jan 2023 11:18:45 -0800 (PST)
Received: from hermes.local (204-195-120-218.wavecable.com. [204.195.120.218])
 by smtp.gmail.com with ESMTPSA id
 je5-20020a170903264500b001896522a23bsm1345894plb.39.2023.01.26.11.18.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Jan 2023 11:18:45 -0800 (PST)
Date: Thu, 26 Jan 2023 11:18:43 -0800
To: Petr Machata <petrm@nvidia.com>
Message-ID: <20230126111843.2544f7d1@hermes.local>
In-Reply-To: <8886e11bde5874305a26c0b7dc397923a1d5a794.1674752051.git.petrm@nvidia.com>
References: <cover.1674752051.git.petrm@nvidia.com>
 <8886e11bde5874305a26c0b7dc397923a1d5a794.1674752051.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Ido Schimmel <idosch@nvidia.com>,
 Eric Dumazet <edumazet@google.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 01/16] net: bridge: Set
 strict_start_type at two policies
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

On Thu, 26 Jan 2023 18:01:09 +0100
Petr Machata <petrm@nvidia.com> wrote:

>  static const struct nla_policy br_port_policy[IFLA_BRPORT_MAX + 1] = {
> +	[IFLA_BRPORT_UNSPEC]	= { .strict_start_type =
> +					IFLA_BRPORT_MCAST_EHT_HOSTS_LIMIT + 1 },

Is the original IFLA_BRPORT a typo? ETH not EHT
