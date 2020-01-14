Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0609D13B00F
	for <lists.bridge@lfdr.de>; Tue, 14 Jan 2020 17:53:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8381C81F99;
	Tue, 14 Jan 2020 16:53:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gqr8G-6BXofc; Tue, 14 Jan 2020 16:53:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id C7A098527F;
	Tue, 14 Jan 2020 16:53:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9D1C7C077D;
	Tue, 14 Jan 2020 16:53:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 453BDC077D
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 16:53:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 27D8C20763
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 16:53:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fz353lYYSkHs for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jan 2020 16:53:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 511F620552
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 16:53:42 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id z14so12726963qkg.9
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 08:53:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=f8ZdMZ1BS3aK0eDev5KldCmx7KcdNZN/UQ+7XtW/aqA=;
 b=PUzelXAoI5TjMVnykFB4tdf0SzFYY08HScf9jPX4dI6ofPUxy6MFhNInrqQTFoMQ9x
 JXZ2r+afDsrdLUPHMqOcWONPjxiKx05dTPgRPJdQyH7avOnBoUJWvam/6dWFDjX7L/J0
 B/pdsz/UirHJAgv3AqEYcVkkpb/OIo+PV2iucJBDZEN5HhquzE7vN1IdB7gUL21Za9ag
 uc3IlQTxklGtKmU0kw//wBZJYQgXmzRx9VXyorxyMtjA9KXqtS4PQpnIf6Owf9UpKLlg
 uXNLZF4Ygrj9OvIf/J72+hriWk3+YpidsAZjJVKosvGAc37UYxKXcmGwPAcj2MvfuuX2
 aVJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=f8ZdMZ1BS3aK0eDev5KldCmx7KcdNZN/UQ+7XtW/aqA=;
 b=gq0EB9Tb/zkLysPRZSeC4W74aKBphYPNJy2pJTGxGdi2JD6s1gXqeYZcvM/YU3jJRV
 CLsV0bU03QmJ/d8QwOe5Gx7nvu5XQoT9EpMwMx2kiGl8BDO8y6e0XBg+oNF+bLR4aQmq
 CQSzvM4RlJTmOD2Q1Q1ZMqlgNf+htYx4OovgCjI9RyajfYlNCUyiwPZG89PR2lL8IPNg
 nCOYVlkKqX9/FKQ7i4WQOQtoQ4wFzl6SXGo8DP0FYohMlOswzyqSH8KdHManyqsY9iA9
 FENr9ujZDyZzBjthidfKVdWV0bd0A0q6oh1QihUaF6CwHVaKd3hEumR6S4eqCcEMC9m+
 z51w==
X-Gm-Message-State: APjAAAWCRpILoXd7RzEkhy5i79t9ZTWTi9dERkYXnKAbeXcpI6qMUF49
 SonrqtNa2HR6FxN6y2Y18OOd3IXh
X-Google-Smtp-Source: APXvYqxKYed/TLW46cHyC5xOS8UU5tfLSRUCEhw20sPHnKtFndfsphZ3e43Ob/OCgXKBfIb6+ZfsaA==
X-Received: by 2002:a05:620a:1014:: with SMTP id
 z20mr22166290qkj.196.1579020821154; 
 Tue, 14 Jan 2020 08:53:41 -0800 (PST)
Received: from ?IPv6:2601:282:800:7a:cda2:cdcb:a404:13ae?
 ([2601:282:800:7a:cda2:cdcb:a404:13ae])
 by smtp.googlemail.com with ESMTPSA id r10sm6852694qkm.23.2020.01.14.08.53.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jan 2020 08:53:40 -0800 (PST)
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 Jakub Kicinski <kuba@kernel.org>
References: <20200113155233.20771-1-nikolay@cumulusnetworks.com>
 <20200113155233.20771-4-nikolay@cumulusnetworks.com>
 <20200114055544.77a7806f@cakuba.hsd1.ca.comcast.net>
 <076a7a9f-67c6-483a-7b86-f9d70be6ad47@gmail.com>
 <00c4bc6b-2b31-338e-a9ad-b4ea28fc731c@cumulusnetworks.com>
 <344f496a-5d34-4292-b663-97353f6cfa94@cumulusnetworks.com>
 <d5291717-2ce5-97e0-6204-3ff0d27583c5@gmail.com>
 <aa9878d2-22d7-3bcd-deae-cf9bccd4226e@cumulusnetworks.com>
From: David Ahern <dsahern@gmail.com>
Message-ID: <473cb0a5-f6ad-ccd3-9186-02713f9cb92f@gmail.com>
Date: Tue, 14 Jan 2020 09:53:39 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <aa9878d2-22d7-3bcd-deae-cf9bccd4226e@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 3/8] net: bridge: vlan: add rtm
 definitions and dump support
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

On 1/14/20 9:50 AM, Nikolay Aleksandrov wrote:
> Ah fair enough, so nlmsg_parse() would be better even without attrs.

that was the intention. It would be a good verification of the theory if
you could run a test with a larger ancillary header.
