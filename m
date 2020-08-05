Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E989F23CC53
	for <lists.bridge@lfdr.de>; Wed,  5 Aug 2020 18:38:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B19B1882A0;
	Wed,  5 Aug 2020 16:38:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y3025WVGE3kn; Wed,  5 Aug 2020 16:38:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5271E882AA;
	Wed,  5 Aug 2020 16:38:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 36FD7C004C;
	Wed,  5 Aug 2020 16:38:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CA38DC004C
 for <bridge@lists.linux-foundation.org>; Wed,  5 Aug 2020 16:38:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B91E087897
 for <bridge@lists.linux-foundation.org>; Wed,  5 Aug 2020 16:38:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PGc+wNKPUPlZ for <bridge@lists.linux-foundation.org>;
 Wed,  5 Aug 2020 16:38:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8F83687872
 for <bridge@lists.linux-foundation.org>; Wed,  5 Aug 2020 16:38:14 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id m7so10100516qki.12
 for <bridge@lists.linux-foundation.org>; Wed, 05 Aug 2020 09:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=OWOcCu/RdgXsCBIctAyPQWwmqwK81xNeRORnBnjCneQ=;
 b=tW1knKDE62tuWn5yeakMwnGIfDvIy8Nk4xLrt9d+xlZ0YyDTp0hfdO9t95joJp7vvZ
 Rr+5fj2ioRVHlNbtjNL9uFziyTfkS9m6bSrOaXsRADXi8VDgAZphegvBa9lTyhmpC/BW
 3brEgbOSY0tWjPyGmMovwukn4TBmQXaupVQCUTorMzToFKmuldYaJEJRmJ6fIqatSImu
 nrmyVVaeqG9e2xCRnc7TEKtNfrYGHD5YPJTs5cC4OyePzM+7V5j2mI+sMDtN7CvRgPe7
 0G+RF71204I3OsNCTMT6/vujlrH+z8AiuY8nIiy3121EPJta/NA+nf0LmKffr5fAn3+f
 oCOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OWOcCu/RdgXsCBIctAyPQWwmqwK81xNeRORnBnjCneQ=;
 b=VpvtvR9shptWuIJ+3FG9fYT/J7itrc2emHzdDcyblVLd+AUhxH6fazozA5iQ66w/y3
 qCzzGLRxXZd0PsXRnn55ZZof89PBXsA8rawiT3XdD1ysNNuxzqE5xSIAlCweYBPvgpQG
 B5tk4I29Ywr/9WX+Ku/8aN8ZcVcSZPJ0BiBnHCgYeCwd5jiKh2P3HkmF0SVxtMQv9q5p
 ee9E5sCjEP4TFucQVBsf1i+aOR96J3ntYiJ2X31wiPxp90ubASMhqbYmy9y66oaof9cv
 bR4KdAAGv1Dk4hCHKuD5Z9SlVkWFcgBXjKJdFWqJZn2g0czoYZdL1QOCVmwl4a5ONx96
 cx7Q==
X-Gm-Message-State: AOAM531k34Xyth4dr3G8t3r0A1x0dXu/lqRsG6Djk3p3OGZ2fsTnNlLY
 Lcr4NxQ9tEZvTrthoCkIFtM=
X-Google-Smtp-Source: ABdhPJzHbvC24LEDffg8OVD0lvzzuhVVCTLwMO+4l6PPbH7YR9RHVzxjr31PzE59EaiGa3a5E15XEw==
X-Received: by 2002:a37:68c1:: with SMTP id d184mr4174354qkc.62.1596645493547; 
 Wed, 05 Aug 2020 09:38:13 -0700 (PDT)
Received: from [10.254.6.29] ([162.243.188.133])
 by smtp.googlemail.com with ESMTPSA id k5sm2516784qtu.2.2020.08.05.09.38.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Aug 2020 09:38:12 -0700 (PDT)
To: Yoshiki Komachi <komachi.yoshiki@gmail.com>
References: <1596170660-5582-1-git-send-email-komachi.yoshiki@gmail.com>
 <1596170660-5582-3-git-send-email-komachi.yoshiki@gmail.com>
 <5970d82b-3bb9-c78f-c53a-8a1c95a1fad7@gmail.com>
 <F99B20F3-4F88-4AFC-9DF8-B32EFD417785@gmail.com>
From: David Ahern <dsahern@gmail.com>
Message-ID: <e92455ce-3a3f-7c52-1388-da40e8ceefd0@gmail.com>
Date: Wed, 5 Aug 2020 10:38:10 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <F99B20F3-4F88-4AFC-9DF8-B32EFD417785@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: Song Liu <songliubraving@fb.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, David Ahern <dsahern@kernel.org>,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@chromium.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Andrii Nakryiko <andriin@fb.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [RFC PATCH bpf-next 2/3] bpf: Add helper to do
 forwarding lookups in kernel FDB table
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

On 8/4/20 5:27 AM, Yoshiki Komachi wrote:
> 
> I guess that no build errors will occur because the API is allowed when
> CONFIG_BRIDGE is enabled.
> 
> I successfully build my kernel applying this patch, and I don’t receive any
> messages from build robots for now.

If CONFIG_BRIDGE is a module, build should fail: filter.c is built-in
trying to access a symbol from module.
