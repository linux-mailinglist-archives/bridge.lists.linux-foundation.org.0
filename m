Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 993B675CEA8
	for <lists.bridge@lfdr.de>; Fri, 21 Jul 2023 18:22:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4447041F69;
	Fri, 21 Jul 2023 16:22:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4447041F69
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.a=rsa-sha256 header.s=s2048 header.b=d/0MFEOA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pfgjys0aRchn; Fri, 21 Jul 2023 16:22:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 3383841F43;
	Fri, 21 Jul 2023 16:22:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3383841F43
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CBDE3C008D;
	Fri, 21 Jul 2023 16:22:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E27ABC0032
 for <bridge@lists.linux-foundation.org>; Fri, 21 Jul 2023 16:22:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B9DA0612D8
 for <bridge@lists.linux-foundation.org>; Fri, 21 Jul 2023 16:22:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9DA0612D8
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com
 header.a=rsa-sha256 header.s=s2048 header.b=d/0MFEOA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q57ApbfadBAi for <bridge@lists.linux-foundation.org>;
 Fri, 21 Jul 2023 16:22:43 +0000 (UTC)
Received: from sonic304-24.consmr.mail.gq1.yahoo.com
 (sonic304-24.consmr.mail.gq1.yahoo.com [98.137.68.205])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DB506608F5
 for <bridge@lists.linux-foundation.org>; Fri, 21 Jul 2023 16:22:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB506608F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1689956561; bh=8COXdqwHqW8IP794Sq9JAJB+e+BdIi/e3dcqMlkJ4oo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject:Reply-To;
 b=d/0MFEOAYqUgREIYgKcWUfiuXpgh3fFr3hYI5AprjO0n1p6SGUiicwSSPdU9twNtQ5Tpj7fdOuSTWvwGlnVGtIc+KGQUPgoXTf+uVhUXF1U5igzACRbi9eOMpX/lzjcaYa2pEegweo9LfWk/PvT5Q0voYWPIlKwEiCFS6qFhKgfQvOdqy5fe5L4wwqPwCx724MNfgm21/A/beLnwdaQdM9XRAuYbZQoAMphTGcokB+W5rNWgFueGwqjPn1Gr/ecYZvi5SPaSSYegu6hAFZGSXbSMlnktRtwyMbjLqnMsnTTxiDb7VUOg/hhqd6jE9GgG8Pjel3CLfbgoxyiLndbB4g==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1689956561; bh=JceXH+MeKWEDDJP+C7mnqm/biyJ/W1n6xdqs2/bmwgf=;
 h=X-Sonic-MF:From:To:Subject:Date:From:Subject;
 b=iFNyY3vcUFqgGcDJCp4Q+nkjzok1SCkyY8TWBN4aJxKpCGMXVtT7iXbkke/+Mew5fjwqtiakvgQPL7EP7bZyoI2qjIEfBXO4rZVzVe0jAiBZjjV26gIndWKnUfG4ziJU9uBSYfshtRFuJLjoL7lTNIIgLM8/mBBN3fMQofMyd3EV7yvV27+4xcE7BGN8zzQjToMmwFCYFs5kU0j0RYN6XLseCse1xaozd1YRHLtX23uHqedHcQnAuNUwW4ve53Hw0aqjvIzDKCucZT4iIXRYvZbbqnk9TI0h4AEfOXDVcws8mxJxv9eJ1BedbY7VXBRKdTxji6VFaWLboAMGIBUm8w==
X-YMail-OSG: 4s7fEo0VM1kJOB9QjtmWvdKm1rS8R8bsMUeL1hb7rvIjCsXjvifUO8.bSViRbft
 RqhW_v46jm8.MSYOl0Qiil71mruiL42xdt0edQqxOXUBCBuuZkSDKdipffOJFHm08SYln57FW2Wb
 tnr8wCkMqzYUI0sRi9Pv5kuDy1s2q.UNdp18oT3a4SCwUXjMb9r2Bm4IQ4Kqg_QIRzWji4mkcqPg
 BgiSh7Vst2qGSeAtby6GkErBoG0em9NXsAyAL7HHMDt1nrNVpyjlqZpknBDLY6SB83iKj3XhYH_W
 6OiEMMh9n80onkuxiGeGz3wUyEgqCBk65mW5vlYMtozlhvYqmi4.tneSiZbBTeNezWmeGdLbDnbG
 o6thumoOg9sWp5A7q6VtE6TeTP1gQdvRBHZvI9JPkOhAtVl2NrsuBCYVUSdv20pR665wZ9INo6VT
 z_RY5Ldwn0XvSUFKZAd61.BEBCOII5Cue4kBmPvUH6VTlZFR9Ty..atvtWVOlnxs.6QvKNGEO9iD
 8QY8_0.g.vhwqpgMoRb72RSnvVe.nuLq6V5FGoFsegiRVk4dXM0oXIqUe3KH_9n87OLEr09n8XUQ
 FhtVeoeuNFweJn8Lzq2qT7dVBbf.yRq0i2Nk8y2X1A.5pM_HkgNjMMGYqsv1iXqQDktw8A3.ovaF
 MD0vcjNmIA17NEbhGTO91X38om2XvWE9OapbZZcNX8LGq7NbTTMpyDaCKTwp17Mb82kqDU0IUFiu
 6J4StutjrgNY1JEgvqSqx7krbROXPur1a97ZYvj0GF1NldjmUENzcJrAfL.__7HTW7PvNHPobI.n
 zGaxbLFt1_A2CHPgfOBjSC9s.CpaFOj1SqYtLs_t35XINRQGhpQOxbEMcyCD7EROVaCmCRHfMMvp
 MlFOlq5uZN4dYosCMVOcENXrdKNzxxul45N.3nbcidRi3n41nSdByNaGmlcDNArCImTQNt9CHRZT
 yFtp6qkg5ytAuRfKRfoHvnGnuxRxo9Mtaj.769fFh1gJq9.1cxuaTHlLY4B6ai_4JpY0rteL_tN0
 owZlYZBUkm3zVNd.gF6Wh3FMoJo.7Ye0QnuxGT_hEbW4wLn9wOnLUy0x_U2eHw7LLmHmnDxmMx74
 4JA_jPyrOnqhLk9ev5Ay4OwLKBbEMTK0RIWq6SwJaZ3L2MMpUyJJ94_qpJArik8XlJL9IJ27hxvf
 XDfByIRGaYuoFBR_3pMccGCKl0J6kdkZHrvavDRjxznS0o3iz5S7EcdKJGWI2EToOAsiyAuyhUgb
 DxGEtavK12k_GRt0vgfup0I40PJ4SeppX9a8RHKSs5EAHnNBaXnO_.hVLvmAqqGq_lrIofvy3doe
 d5PIwiS2OOv88kcAVhBOrF1SaLkjkRcAHq5wTGCvVe3uzsbxSu79BTerMSj3rvIF7f5xmRQwQqIh
 DlghkhDmcXYCcQ.vAW_syG438KS2lv7JGKu6ftSqmtK6ArJy021Fe6H7Lqp7bkpIc1YuBVwGSL9Y
 fstKtvG8vYMeH.SotpWc4qfJU2MHrFIUfG6jghi1vThj0LbvZ_sZQgm8mogETeQi.J7rVZ9V0gjj
 aANcsy62OIN7Kk.A4NKoq9EXsd4tXhDNw71BixX5EVIas2_RoC5YFL1tMUpo6iwuFmPmMKX2.ax8
 CueD9HEE6ljub.xrVTvhFTX2KW1gS8thqT1Wuf0n6YBkZYW8KlzLwCjzjKOVCxxWdjqxt9Ipfusw
 Y1wCO6FjzWFQGQCseICACMk1sVIbCEX4vbnykavTYPkXXc2QfRcWSJ5XYUTAf9dwc011.y.DAC3r
 c7yQ.rvOPBg0nAd_GTAXBlkDA_pWlJKl9OE_GnORIc1RuKlCWs.8B35WyIUbHSIgu7lnC_piK.tR
 meheFpaP5.rehK5M1EEWclBZwU_QGfUCmftbOwBGUK81JpFxVZhwq7YziBS9PrYy8NYKB7j4nuuo
 xMieJHnHUHQ2P2dQKmBL6uAg59EMu6_QWoVY6LyZfqkXiAmek6MGnZKG6fW5suowddLP9MI1CKHa
 vawd1XBi3b4SAftWJ5pFbQjfHwIh.B9_SOn7ajPCNvZkFgOWW7dG7uT5XMSLmNStDfw0pOO3_Bsp
 gQ1if4uA.Vn_sUqckjBZWL_IcLU8e06_eBjxb3ZX38mzPz8JNyvnRVja2A54na.8RXAy24md.jy5
 Q.5LNT9fr1h1DY0WZU1pSUPtqMnYa6D3_LtnKo416qB1SekEVeZo.7_QQxrhx52bSa2pDDpqkPRU
 7B1MiRSvBzMiefWbGbl.H3FQZtEaydvTsf57nNtwTdyCwiQ--
X-Sonic-MF: <astrajoan@yahoo.com>
X-Sonic-ID: cf5c43ee-1067-422a-8436-3db623ce878c
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.gq1.yahoo.com with HTTP; Fri, 21 Jul 2023 16:22:41 +0000
Received: by hermes--production-ne1-77c6dd44c7-f4ww6 (Yahoo Inc. Hermes SMTP
 Server) with ESMTPA ID e1ca44d63345361332b647089c6c5b35; 
 Fri, 21 Jul 2023 16:22:35 +0000 (UTC)
To: astrajoan@yahoo.com, davem@davemloft.net, edumazet@google.com,
 ivan.orlov0322@gmail.com, kernel@pengutronix.de, kuba@kernel.org,
 linux@rempel-privat.de, linux-can@vger.kernel.org, mkl@pengutronix.de,
 pabeni@redhat.com, robin@protonic.nl, skhan@linuxfoundation.org,
 socketcan@hartkopp.net
Date: Fri, 21 Jul 2023 09:22:26 -0700
Message-Id: <20230721162226.8639-1-astrajoan@yahoo.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230704064710.3189-1-astrajoan@yahoo.com>
References: <20230704064710.3189-1-astrajoan@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: arnd@arndb.de, netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 mudongliangabcd@gmail.com, nikolay@nvidia.com,
 syzbot+1591462f226d9cbf0564@syzkaller.appspotmail.com, roopa@nvidia.com,
 syzbot+881d65229ca4f9ae8c84@syzkaller.appspotmail.com
Subject: [Bridge] [PATCH] can: j1939: prevent deadlock by changing
	j1939_socks_lock to rwlock
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

The following 3 locks would race against each other, causing the
deadlock situation in the Syzbot bug report:

- j1939_socks_lock
- active_session_list_lock
- sk_session_queue_lock

A reasonable fix is to change j1939_socks_lock to an rwlock, since in
the rare situations where a write lock is required for the linked list
that j1939_socks_lock is protecting, the code does not attempt to
acquire any more locks. This would break the circular lock dependency,
where, for example, the current thread already locks j1939_socks_lock
and attempts to acquire sk_session_queue_lock, and at the same time,
another thread attempts to acquire j1939_socks_lock while holding
sk_session_queue_lock.

NOTE: This patch along does not fix the unregister_netdevice bug
reported by Syzbot; instead, it solves a deadlock situation to prepare
for one or more further patches to actually fix the Syzbot bug, which
appears to be a reference counting problem within the j1939 codebase.

Reported-by: syzbot+1591462f226d9cbf0564@syzkaller.appspotmail.com
Signed-off-by: Ziqi Zhao <astrajoan@yahoo.com>
---
 net/can/j1939/j1939-priv.h |  2 +-
 net/can/j1939/main.c       |  2 +-
 net/can/j1939/socket.c     | 25 +++++++++++++------------
 3 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/net/can/j1939/j1939-priv.h b/net/can/j1939/j1939-priv.h
index 16af1a7f80f6..74f15592d170 100644
--- a/net/can/j1939/j1939-priv.h
+++ b/net/can/j1939/j1939-priv.h
@@ -86,7 +86,7 @@ struct j1939_priv {
 	unsigned int tp_max_packet_size;
 
 	/* lock for j1939_socks list */
-	spinlock_t j1939_socks_lock;
+	rwlock_t j1939_socks_lock;
 	struct list_head j1939_socks;
 
 	struct kref rx_kref;
diff --git a/net/can/j1939/main.c b/net/can/j1939/main.c
index ecff1c947d68..a6fb89fa6278 100644
--- a/net/can/j1939/main.c
+++ b/net/can/j1939/main.c
@@ -274,7 +274,7 @@ struct j1939_priv *j1939_netdev_start(struct net_device *ndev)
 		return ERR_PTR(-ENOMEM);
 
 	j1939_tp_init(priv);
-	spin_lock_init(&priv->j1939_socks_lock);
+	rwlock_init(&priv->j1939_socks_lock);
 	INIT_LIST_HEAD(&priv->j1939_socks);
 
 	mutex_lock(&j1939_netdev_lock);
diff --git a/net/can/j1939/socket.c b/net/can/j1939/socket.c
index feaec4ad6d16..a8b981dc2065 100644
--- a/net/can/j1939/socket.c
+++ b/net/can/j1939/socket.c
@@ -80,16 +80,16 @@ static void j1939_jsk_add(struct j1939_priv *priv, struct j1939_sock *jsk)
 	jsk->state |= J1939_SOCK_BOUND;
 	j1939_priv_get(priv);
 
-	spin_lock_bh(&priv->j1939_socks_lock);
+	write_lock_bh(&priv->j1939_socks_lock);
 	list_add_tail(&jsk->list, &priv->j1939_socks);
-	spin_unlock_bh(&priv->j1939_socks_lock);
+	write_unlock_bh(&priv->j1939_socks_lock);
 }
 
 static void j1939_jsk_del(struct j1939_priv *priv, struct j1939_sock *jsk)
 {
-	spin_lock_bh(&priv->j1939_socks_lock);
+	write_lock_bh(&priv->j1939_socks_lock);
 	list_del_init(&jsk->list);
-	spin_unlock_bh(&priv->j1939_socks_lock);
+	write_unlock_bh(&priv->j1939_socks_lock);
 
 	j1939_priv_put(priv);
 	jsk->state &= ~J1939_SOCK_BOUND;
@@ -329,13 +329,13 @@ bool j1939_sk_recv_match(struct j1939_priv *priv, struct j1939_sk_buff_cb *skcb)
 	struct j1939_sock *jsk;
 	bool match = false;
 
-	spin_lock_bh(&priv->j1939_socks_lock);
+	read_lock_bh(&priv->j1939_socks_lock);
 	list_for_each_entry(jsk, &priv->j1939_socks, list) {
 		match = j1939_sk_recv_match_one(jsk, skcb);
 		if (match)
 			break;
 	}
-	spin_unlock_bh(&priv->j1939_socks_lock);
+	read_unlock_bh(&priv->j1939_socks_lock);
 
 	return match;
 }
@@ -344,11 +344,11 @@ void j1939_sk_recv(struct j1939_priv *priv, struct sk_buff *skb)
 {
 	struct j1939_sock *jsk;
 
-	spin_lock_bh(&priv->j1939_socks_lock);
+	read_lock_bh(&priv->j1939_socks_lock);
 	list_for_each_entry(jsk, &priv->j1939_socks, list) {
 		j1939_sk_recv_one(jsk, skb);
 	}
-	spin_unlock_bh(&priv->j1939_socks_lock);
+	read_unlock_bh(&priv->j1939_socks_lock);
 }
 
 static void j1939_sk_sock_destruct(struct sock *sk)
@@ -484,6 +484,7 @@ static int j1939_sk_bind(struct socket *sock, struct sockaddr *uaddr, int len)
 
 		priv = j1939_netdev_start(ndev);
 		dev_put(ndev);
+
 		if (IS_ERR(priv)) {
 			ret = PTR_ERR(priv);
 			goto out_release_sock;
@@ -1078,12 +1079,12 @@ void j1939_sk_errqueue(struct j1939_session *session,
 	}
 
 	/* spread RX notifications to all sockets subscribed to this session */
-	spin_lock_bh(&priv->j1939_socks_lock);
+	read_lock_bh(&priv->j1939_socks_lock);
 	list_for_each_entry(jsk, &priv->j1939_socks, list) {
 		if (j1939_sk_recv_match_one(jsk, &session->skcb))
 			__j1939_sk_errqueue(session, &jsk->sk, type);
 	}
-	spin_unlock_bh(&priv->j1939_socks_lock);
+	read_unlock_bh(&priv->j1939_socks_lock);
 };
 
 void j1939_sk_send_loop_abort(struct sock *sk, int err)
@@ -1271,7 +1272,7 @@ void j1939_sk_netdev_event_netdown(struct j1939_priv *priv)
 	struct j1939_sock *jsk;
 	int error_code = ENETDOWN;
 
-	spin_lock_bh(&priv->j1939_socks_lock);
+	read_lock_bh(&priv->j1939_socks_lock);
 	list_for_each_entry(jsk, &priv->j1939_socks, list) {
 		jsk->sk.sk_err = error_code;
 		if (!sock_flag(&jsk->sk, SOCK_DEAD))
@@ -1279,7 +1280,7 @@ void j1939_sk_netdev_event_netdown(struct j1939_priv *priv)
 
 		j1939_sk_queue_drop_all(priv, jsk, error_code);
 	}
-	spin_unlock_bh(&priv->j1939_socks_lock);
+	read_unlock_bh(&priv->j1939_socks_lock);
 }
 
 static int j1939_sk_no_ioctlcmd(struct socket *sock, unsigned int cmd,
-- 
2.34.1

