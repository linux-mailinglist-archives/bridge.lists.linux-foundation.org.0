Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADE81B6EF4
	for <lists.bridge@lfdr.de>; Fri, 24 Apr 2020 09:27:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 082908806F;
	Fri, 24 Apr 2020 07:27:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sPU3L7LcGmGK; Fri, 24 Apr 2020 07:27:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9573488070;
	Fri, 24 Apr 2020 07:27:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 86D9CC0175;
	Fri, 24 Apr 2020 07:27:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 436C5C0175
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 07:27:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2D9008806F
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 07:27:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pmoj6KrwmfUG for <bridge@lists.linux-foundation.org>;
 Fri, 24 Apr 2020 07:27:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 529508806D
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 07:27:01 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id m2so6844925lfo.6
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 00:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YOpc3bZiRWRriDSOObFG3Qsaf8uxGUEggNP5IeWWlyc=;
 b=Uq9i3WyVrsQvzUcGGl60mesNcqH8kUSz9cfz0yx+jCZu+S946JMHJL7esS8It0Etnm
 H1alD/laSVyanfu+OLGlYwuz8hgJVQCCScKBzrJhJB+qRmcQxvtw0uT7ay87Dgy3GCim
 qrx26IZ9MiZa5KQh4Q3QCgBAEshKCOyJDXlyQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YOpc3bZiRWRriDSOObFG3Qsaf8uxGUEggNP5IeWWlyc=;
 b=g5vMZMMcdDm+42khUzCEL/U1afd5oDhRBF2M99mnKqrn6K8XZMoAbAfa7Fd/bsgABq
 gsSB7FM+7QvsCVpWPuecFTdHGWM9YaBRzrFkf3AavTUNJ7LqDg+SCtlqPZVQ6XThm1Ev
 Nx+gqseWSDCAbdSiGzunOJIsRFFHs+SCnpQamosYe0ObtHfgmOSyhL2YQ6z+pGe/eNYJ
 MaI+HcphBjy7bWux/jqw7EAUwiJOEhb1Q8A6XPrjbvvbWxifZnhR4HQ230Z6KrPAWDqT
 U3Hmjd3bfQrytPwKtOPJ/Yw7qJApelYzsA7Z7iqnaZisP+TI3LPMD0Z8P9N1GfOM0MIi
 8+Ng==
X-Gm-Message-State: AGi0PuZ7dSnUQI58voYelBot6Nrqlu9aE4NKNYrqbU87FborTLiWG5E6
 lrTBiboCM6e+/cwazKsHVL7p1Q==
X-Google-Smtp-Source: APiQypL57MdwPcz6SQqNih12slm2YU3XiyTUoy6A/+GUwGfBkGiI9RJaSEMMsfSToqoUJhDTX3TpbA==
X-Received: by 2002:a19:224e:: with SMTP id i75mr5249872lfi.22.1587713219328; 
 Fri, 24 Apr 2020 00:26:59 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id y22sm3755051lfg.92.2020.04.24.00.26.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Apr 2020 00:26:58 -0700 (PDT)
To: Stephen Hemminger <stephen@networkplumber.org>
References: <20181114172703.5795-1-nikolay@cumulusnetworks.com>
 <20181116165001.30896-1-nikolay@cumulusnetworks.com>
 <20200423170521.65a3bc59@hermes.lan>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <137746b0-1655-3704-a6f1-54274615d605@cumulusnetworks.com>
Date: Fri, 24 Apr 2020 10:26:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200423170521.65a3bc59@hermes.lan>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, syzkaller-bugs@googlegroups.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net v3] net: bridge: fix vlan stats
 use-after-free on destruction
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

On 24/04/2020 03:05, Stephen Hemminger wrote:
> On Fri, 16 Nov 2018 18:50:01 +0200
> Nikolay Aleksandrov <nikolay@cumulusnetworks.com> wrote:
> 
>> Syzbot reported a use-after-free of the global vlan context on port vlan
>> destruction. When I added per-port vlan stats I missed the fact that the
>> global vlan context can be freed before the per-port vlan rcu callback.
>> There're a few different ways to deal with this, I've chosen to add a
>> new private flag that is set only when per-port stats are allocated so
>> we can directly check it on destruction without dereferencing the global
>> context at all. The new field in net_bridge_vlan uses a hole.
>>
>> v2: cosmetic change, move the check to br_process_vlan_info where the
>>     other checks are done
>> v3: add change log in the patch, add private (in-kernel only) flags in a
>>     hole in net_bridge_vlan struct and use that instead of mixing
>>     user-space flags with private flags
>>
>> Fixes: 9163a0fc1f0c ("net: bridge: add support for per-port vlan stats")
>> Reported-by: syzbot+04681da557a0e49a52e5@syzkaller.appspotmail.com
>> Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> 
> Why not just use v->stats itself as the flag.
> Since free of NULL is a nop it would be cleaner?
> 

v->stats is *always* set while the vlan is published/visible, that's a guarantee
I don't want to break because I'll have to add null checks in the fast-path.

By the way this is a thread from 2018. :-)

Cheers,
 Nik

